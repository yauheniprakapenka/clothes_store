part of '../../../../clothing_store.dart';

class ViewCategoryPage extends StatelessWidget {
  final _randomService = _ClothesRandomService();
  final _gridPadding = 12.0;

  final String navigationTitle;
  final List<String> imageUrl;

  /// ![](https://user-images.githubusercontent.com/47568606/132839745-c0925d68-661e-440d-843f-9f33b1322418.png)
  ViewCategoryPage({
    Key? key,
    required this.navigationTitle,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrlLenght = imageUrl.length;

    return Scaffold(
      backgroundColor: _AppColor.background,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: _ViewCategoryHeaderDelegate(
                child: _Navigation(title: navigationTitle),
              ),
            ),
            const SliverPadding(padding: EdgeInsets.only(top: 16)),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: _gridPadding),
              sliver: SliverGrid.count(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                crossAxisSpacing: _gridPadding,
                mainAxisSpacing: _gridPadding,
                children: [
                  ...List.generate(
                    imageUrlLenght,
                    (index) {
                      final cost = _randomService.cost;
                      final discount = _randomService.discount(cost);

                      final clothes = _ClothesModel(
                        imageUrl: imageUrl[index],
                        size: '${_randomService.size}',
                        cost: '$cost',
                        title: _randomService.brand,
                        discount: '$discount',
                      );

                      return _ClothesItem(clothes: clothes);
                    },
                  ),
                ],
              ),
            ),
            const SliverPadding(padding: EdgeInsets.only(top: 40)),
          ],
        ),
      ),
    );
  }
}
