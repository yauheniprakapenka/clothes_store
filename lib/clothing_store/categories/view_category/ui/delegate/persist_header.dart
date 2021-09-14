part of '../../../../clothing_store.dart';

class _ViewCategoryHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _ViewCategoryHeaderDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => _AppSize.navigationHeight;

  @override
  double get minExtent => _AppSize.navigationHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
