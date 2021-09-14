part of '../../../../clothing_store.dart';

class _Header extends StatelessWidget {
  final int activeIndexTag;
  final List<_ClothesSectionModel> clothesCategory;
  final Function(int tagIndex) tagOnPressed;

  /// ![](https://user-images.githubusercontent.com/47568606/132706314-d3815251-57b3-4ffb-9f8b-5068dde13836.png)
  const _Header({
    required this.activeIndexTag,
    required this.tagOnPressed,
    required this.clothesCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12),
      width: double.maxFinite,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: _AppShadow.shadow,
      ),
      child: Column(
        children: [
          const Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Rollershop',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: _AppColor.onBackground,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: clothesCategory.length,
              itemBuilder: (context, index) {
                return Center(
                    child: _Tag(
                  title: clothesCategory[index].sectionTitle,
                  isActive: activeIndexTag == index ? true : false,
                  onPressed: () {
                    tagOnPressed(index);
                  },
                ));
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 12);
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
