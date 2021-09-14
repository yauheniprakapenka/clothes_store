part of '../../../../clothing_store.dart';

class _Tag extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onPressed;

  /// ![](https://user-images.githubusercontent.com/47568606/132706390-6db9b48c-ec20-4edd-97e8-060623890215.png)
  const _Tag({
    required this.title,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    const height = 32.0;
    const borderRadius = height * 0.5;
    final opacity = isActive ? 1.0 : 0.5;

    return Container(
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: height,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(opacity),
        borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
      ),
      child: RawMaterialButton(
        onPressed: () {
          onPressed();
        },
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
