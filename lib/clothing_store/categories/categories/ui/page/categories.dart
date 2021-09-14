part of '../../../../clothing_store.dart';

/// При листании правой колонки блокируется левая, и наоборот.
/// Когда листается одна колонка, то смещение этой колонки передается в другую колонку.
/// Блокирование колонки позволяет избежать конфликта, когда система не понимает, из какой колонки брать данные.
/// Чтобы понять, какая колонка активна, для каждого элемента колонки используется жест onPanDown, при срабатывании
/// которого устанавливается флаг, какая активная колонка стала.
enum _ActiveSide { left, right }

/// ![](https://user-images.githubusercontent.com/47568606/132839657-4cc2c062-e23d-4f9a-b518-c2b2193e8b36.png)
class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final rigthController = ScrollController();
  final leftController = ScrollController();

  var activeSide = _ActiveSide.right;
  var activeCategoryIndex = 0;

  var clothesCategory = <_ClothesSectionModel>[];
  var leftSplittedClothes = <_ClothesCategoryModel>[];
  var rightSplittedClothes = <_ClothesCategoryModel>[];

  late bool _isClothesLengthEqual;

  @override
  void initState() {
    super.initState();
    addControllerListeners();
    addClothesCategory();
    splitClothes(clothesCategory[activeCategoryIndex].categories);
    isClothesLengthEqual();
  }

  @override
  void dispose() {
    disposeControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _AppColor.background,
      body: Column(
        children: [
          _Header(
            activeIndexTag: activeCategoryIndex,
            clothesCategory: clothesCategory,
            tagOnPressed: (tagIndex) {
              activeCategoryIndex = tagIndex;
              splitClothes(clothesCategory[activeCategoryIndex].categories);
              isClothesLengthEqual();
              setState(() {});
            },
          ),
          Expanded(
            child: Row(
              children: [
                buildLeftClothes(leftSplittedClothes),
                buildRightClothes(
                  rigthClothes: rightSplittedClothes,
                  leftClothesLength: leftSplittedClothes.length,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLeftClothes(List<_ClothesCategoryModel> clothes) {
    final clothesLength = clothes.length;
    const lastStubItemCount = 1;
    final clothesLengthWithStub = clothes.length + lastStubItemCount;

    return Expanded(
      child: ListView(
        controller: leftController,
        children: [
          ...List.generate(
            _isClothesLengthEqual ? clothesLengthWithStub : clothesLength,
            (index) => GestureDetector(
              onPanDown: (details) => activeSide = _ActiveSide.left,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ViewCategoryPage(
                        navigationTitle: clothes[index].title,
                        imageUrl: clothesCategory[activeCategoryIndex].imageUrl
                          ..shuffle(),
                      );
                    },
                  ),
                );
              },
              child: SizedBox(
                height: _ClothesService.getLeftClothesSize(
                  leftCurrentClothesIndex: index,
                  leftClothesLength: clothesLengthWithStub,
                  isClothesEquel: _isClothesLengthEqual,
                ),
                child: index == clothesLength
                    ? _buildStubSpace()
                    : _ClothesCategoryItem(clothes: clothes[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRightClothes({
    required List<_ClothesCategoryModel> rigthClothes,
    required int leftClothesLength,
  }) {
    final rightClothesLength = rigthClothes.length;
    var rightClothesLengthWithStub = rightClothesLength + 1;

    return Expanded(
      child: ListView(
        controller: rigthController,
        children: [
          ...List.generate(
            _isClothesLengthEqual
                ? rightClothesLength
                : rightClothesLengthWithStub,
            (index) => GestureDetector(
              onPanDown: (details) => activeSide = _ActiveSide.right,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ViewCategoryPage(
                        navigationTitle: rigthClothes[index].title,
                        imageUrl: clothesCategory[activeCategoryIndex].imageUrl
                          ..shuffle(),
                      );
                    },
                  ),
                );
              },
              child: SizedBox(
                height: _ClothesService.getRightClothesSize(
                  rightClothesCurrentIndex: index,
                  rightClothesLength: rightClothesLength,
                  leftClothesLength: leftSplittedClothes.length,
                  isClothesEquel: _isClothesLengthEqual,
                ),
                child: _isClothesLengthEqual
                    ? _ClothesCategoryItem(clothes: rigthClothes[index])
                    : index == rightClothesLength
                        ? _buildStubSpace()
                        : _ClothesCategoryItem(
                            clothes: rigthClothes[index],
                          ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<String> addClothesImageUrl(List<String> imageUrl) {
    return List.generate(imageUrl.length, (index) {
      return imageUrl[index];
    });
  }

  void addControllerListeners() {
    rigthController.addListener(() {
      if (activeSide == _ActiveSide.right) {
        setState(() {
          leftController.jumpTo(rigthController.offset);
        });
      }
    });

    leftController.addListener(() {
      if (activeSide == _ActiveSide.left) {
        setState(() {
          rigthController.jumpTo(leftController.offset);
        });
      }
    });
  }

  void disposeControllers() {
    rigthController.dispose();
    leftController.dispose();
  }

  void splitClothes(List<_ClothesCategoryModel> clothes) {
    leftSplittedClothes.clear();
    rightSplittedClothes.clear();

    clothes.asMap().forEach((index, clothes) {
      index.isEven
          ? leftSplittedClothes.add(clothes)
          : rightSplittedClothes.add(clothes);
    });
  }

  void isClothesLengthEqual() {
    _isClothesLengthEqual =
        leftSplittedClothes.length == rightSplittedClothes.length;
  }

  // TODO(eprakopenko): получать из репозитория
  void addClothesCategory() {
    clothesCategory = [
      _ClothesSectionModel(
        sectionTitle: 'Женское',
        categories: _ClothesRepository.getWomanCategoryClothes(),
        imageUrl:
            addClothesImageUrl(_ClothesRepository.getWomanClothesImageUrl()),
      ),
      _ClothesSectionModel(
        sectionTitle: 'Мужское',
        categories: _ClothesRepository.getManCategoryClothes(),
        imageUrl:
            addClothesImageUrl(_ClothesRepository.getManClothesImageUrl()),
      ),
      _ClothesSectionModel(
        sectionTitle: 'Для девочек',
        categories: _ClothesRepository.getGirlCategoryClothes(),
        imageUrl:
            addClothesImageUrl(_ClothesRepository.getGirlClothesImageUrl()),
      ),
      _ClothesSectionModel(
        sectionTitle: 'Для мальчиков',
        categories: _ClothesRepository.getBoyCategoryClothes(),
        imageUrl:
            addClothesImageUrl(_ClothesRepository.getBoyClothesImageUrl()),
      ),
    ];
  }
}
