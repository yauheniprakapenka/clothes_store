part of '../../../clothing_store.dart';

class _RoundedRectangleButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  /// ![](https://user-images.githubusercontent.com/47568606/132947823-d49bae60-ea77-4a91-8b2e-32b61cd0fe1c.png)
  const _RoundedRectangleButton({
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.maxFinite,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.all(Radius.circular(23)),
      ),
      child: RawMaterialButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
