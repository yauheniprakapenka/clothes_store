part of '../../../clothing_store.dart';

class _SocialButton extends StatelessWidget {
  final String assetName;
  final VoidCallback onPressed;

  /// ![](https://user-images.githubusercontent.com/47568606/132992973-5295bc10-8c63-4045-b85e-7d1353961db8.png)
  const _SocialButton({
    required this.assetName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    const iconSize = 40.0;

    return SizedBox(
      height: iconSize,
      width: iconSize,
      child: RawMaterialButton(
          onPressed: () => onPressed(), child: Image.asset(assetName)),
    );
  }
}
