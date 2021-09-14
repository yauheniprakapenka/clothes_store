part of '../../../../clothing_store.dart';

/// ![](https://user-images.githubusercontent.com/47568606/132992781-3481f61b-e187-4297-904f-6818679c1d7b.png)
class _ShoppingCartButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isActive;

  final _buttonSize = 24.0;
  final _activeIcon = 'assets/icons/cart_active.svg';
  final _inactiveIcon = 'assets/icons/cart_inactive.svg';

  const _ShoppingCartButton({
    required this.onPressed,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final icon = isActive ? _inactiveIcon : _activeIcon;

    return SizedBox(
      width: _buttonSize,
      height: _buttonSize,
      child: RawMaterialButton(
        child: SizedBox(
          width: _buttonSize,
          height: _buttonSize,
          child: SvgPicture.asset(icon),
        ),
        onPressed: () => onPressed(),
      ),
    );
  }
}
