part of '../../../../clothing_store.dart';

class _Raiting extends StatelessWidget {
  final int maxStars, activeStars;
  final _iconSize = 18.0;
  final _activeColor = const Color(0xFFFFC833);
  final _inactiveColor = const Color(0xFFEBF0FF);

  /// ![](https://user-images.githubusercontent.com/47568606/132992760-6e9e1272-a1ae-4743-8549-03114ac0f152.png)
  _Raiting({
    required this.maxStars,
    required this.activeStars,
  }) {
    assert(activeStars <= maxStars);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(maxStars, (index) {
          final color = index < activeStars ? _activeColor : _inactiveColor;
          return Icon(Icons.star_outlined, size: _iconSize, color: color);
        }),
      ],
    );
  }
}
