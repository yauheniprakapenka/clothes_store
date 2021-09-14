part of '../../../../clothing_store.dart';

class _ClothesCategoryItem extends StatelessWidget {
  final _ClothesCategoryModel clothes;

  /// ![](https://user-images.githubusercontent.com/47568606/132647802-83a61d25-6ccf-4192-93fd-ac3819d44bea.png)
  const _ClothesCategoryItem({
    required this.clothes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        image: DecorationImage(
          image: NetworkImage(clothes.urlImage),
          fit: BoxFit.cover,
        ),
      ),
      width: 100,
      child: Column(
        children: [
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            height: 48,
            width: double.maxFinite,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.9),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                clothes.title,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
