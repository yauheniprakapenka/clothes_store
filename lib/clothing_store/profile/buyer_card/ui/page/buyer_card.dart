part of '../../../../clothing_store.dart';

class _BuyerCardPage extends StatelessWidget {
  final List<_BuyerCardModel> buyerCards;

  /// ![](https://user-images.githubusercontent.com/47568606/132993238-3e639089-8613-4294-b26f-19f2709aedf0.png)
  const _BuyerCardPage({
    required this.buyerCards,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _AppColor.background,
      body: SafeArea(
        child: Column(
          children: [
            const _Navigation(title: 'Карточки покупателя'),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 16);
                    },
                    itemCount: buyerCards.length,
                    itemBuilder: (context, index) {
                      return _BuyerCard(buyerCard: buyerCards[index]);
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _RoundedRectangleButton(
                title: 'Добавить',
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
