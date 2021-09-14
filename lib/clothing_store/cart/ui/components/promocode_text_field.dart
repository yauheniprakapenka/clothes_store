part of '../../../clothing_store.dart';

/// ![](https://user-images.githubusercontent.com/47568606/132999157-03b22ca4-64e1-4692-bfb3-4961730b7eff.png)
class _PromocodeTextField extends StatelessWidget {
  final _containerHeight = 56.0;
  
  @override
  Widget build(BuildContext context) {
    final radius = _containerHeight * 0.5;

    return Container(
      height: _containerHeight,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.primary.withOpacity(1),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Введите промокод',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          RawMaterialButton(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              height: double.maxFinite,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.all(
                  Radius.circular(radius),
                ),
              ),
              child: Center(
                child: Text(
                  'Применить',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
