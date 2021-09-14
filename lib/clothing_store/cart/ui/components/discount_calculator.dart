part of '../../../clothing_store.dart';

/// ![](https://user-images.githubusercontent.com/47568606/132999937-26e7e15f-2d54-47ac-b642-afbb41d9d2cf.png)
class _DiscountCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(28)),
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.primary.withOpacity(1),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Сумма'),
              Text('299,43 ₽'),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text('Скидка'), Text('-40,00 ₽')],
          ),
          const SizedBox(height: 24),
          const _DottedLine(height: 2),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Итого',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              const Text(
                '249,43 ₽',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: _AppColor.cost,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
