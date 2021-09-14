part of '../../../clothing_store.dart';

class _CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<_CartPage> {
  @override
  Widget build(BuildContext context) {
    final clothes = _CartRepository.getClothesInCart();

    return Scaffold(
      backgroundColor: _AppColor.background,
      body: Column(
        children: [
          const _Navigation(title: 'Корзина', hasBackButton: false),
          Expanded(child: _buildContent(clothes)),
          if (clothes.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _RoundedRectangleButton(
                onPressed: () {},
                title: 'Перейти к оформлению',
              ),
            ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildContent(List<_ClothesModel> clothes) {
    if (clothes.isEmpty) {
      return const Center(
        child: Text(
          'Пусто 🙁',
          style: TextStyle(
            fontSize: 20,
            color: _AppColor.onBackground,
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            ...List.generate(clothes.length, (index) {
              return Column(
                children: [
                  _CartCard(clothes: clothes[index]),
                  const SizedBox(height: 16),
                ],
              );
            }),
            const SizedBox(height: 24),
            _buildPromocodeSection(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

Widget _buildPromocodeSection() {
  return Column(
    children: [
      _PromocodeTextField(),
      const SizedBox(height: 16),
      _DiscountCalculator(),
    ],
  );
}
