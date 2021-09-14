part of '../../../../clothing_store.dart';

class _BuyerCard extends StatelessWidget {
  final _BuyerCardModel buyerCard;

  /// ![](https://user-images.githubusercontent.com/47568606/132991062-6dea5e90-1d4f-4547-b698-1950c36ccac7.png)
  const _BuyerCard({
    required this.buyerCard,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildName(context),
          _buildIndicators(context),
        ],
      ),
    );
  }

  Widget _buildName(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          buyerCard.name,
          style: const TextStyle(
            fontSize: 16,
            color: _AppColor.onBackground,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Icon(
          Icons.delete_outline,
          color: _AppColor.onBackground,
        )
      ],
    );
  }

  Widget _buildIndicators(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'Рост',
              style: TextStyle(
                color: _AppColor.onBackground.withOpacity(0.6),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 16),
            Text(
              '${buyerCard.height} см',
              style: const TextStyle(
                color: _AppColor.onBackground,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Размер',
              style: TextStyle(
                color: _AppColor.onBackground.withOpacity(0.6),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 16),
            Text(
              '${buyerCard.size} (RU)',
              style: const TextStyle(
                color: _AppColor.onBackground,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
