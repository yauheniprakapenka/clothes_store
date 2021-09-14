part of '../../../../clothing_store.dart';

class _ClothesItem extends StatelessWidget {
  final _ClothesModel clothes;

  /// ![](https://user-images.githubusercontent.com/47568606/132992573-a69a78aa-8e15-463c-8d04-8c0d1d5ff5ad.png)
  const _ClothesItem({
    required this.clothes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        border: Border.all(width: 1, color: const Color(0xFFEBF0FF)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              child: Container(
                width: double.maxFinite,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Image.network(clothes.imageUrl, fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  clothes.title,
                  style: const TextStyle(
                    color: _AppColor.onBackground,
                    fontWeight: FontWeight.w700,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                _buildPadding4(),
                _Raiting(
                  activeStars: _ClothesRandomService().activeStars(5),
                  maxStars: 5,
                ),
                const Spacer(),
                _buildPadding4(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${clothes.cost},00 ₽',
                          style: const TextStyle(
                            color: _AppColor.cost,
                            fontWeight: FontWeight.w900,
                            fontSize: 14,
                          ),
                        ),
                        _buildPadding4(),
                        Text(
                          '${clothes.discount},00 ₽',
                          style: TextStyle(
                            color: _AppColor.onBackground.withOpacity(0.7),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    _ShoppingCartButton(
                      onPressed: () {
                        _CartRepository.addClothesInCard(clothes);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPadding4() => const SizedBox(height: 4);
}
