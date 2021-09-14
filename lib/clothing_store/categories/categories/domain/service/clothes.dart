part of '../../../../clothing_store.dart';

class _ClothesService {
  static double getLeftClothesSize({
    required int leftCurrentClothesIndex,
    required int leftClothesLength,
    required bool isClothesEquel,
  }) {
    final size = _ClothesItemSize();
    final normalSize = _ClothesItemSize().normalSize;
    final firstItemSize = size.smallerSize;
    final lastItemSize = size.smallerRemainder;
    final lastStubItemIndex = leftClothesLength - 1;

    if (leftCurrentClothesIndex == 0) return firstItemSize;
    if (!isClothesEquel) return normalSize;
    if (leftCurrentClothesIndex == lastStubItemIndex) return lastItemSize;
    return normalSize;
  }

  static double getRightClothesSize({
    required int rightClothesCurrentIndex,
    required int rightClothesLength,
    required int leftClothesLength,
    required bool isClothesEquel,
  }) {
    final size = _ClothesItemSize();
    final normalSize = size.normalSize;
    final lastItemSize = size.smallerSize;

    if (!isClothesEquel) {
      if (rightClothesCurrentIndex == rightClothesLength) return lastItemSize;
    }
    return normalSize;
  }
}
