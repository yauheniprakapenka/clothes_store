part of '../../../../clothing_store.dart';

class _ClothesItemSize {
  final _itemSize = 300.0;

  /// ![](https://user-images.githubusercontent.com/47568606/132665946-550c2adb-7432-4d13-b643-a41e6209b9bc.png)
  double get normalSize {
    return _itemSize;
  }

  /// ![](https://user-images.githubusercontent.com/47568606/132665784-9c079d03-c519-4b83-a0a4-751eb2751694.png)
  double get smallerSize {
    return normalSize * 0.8;
  }

  /// ![](https://user-images.githubusercontent.com/47568606/132665557-c610f9ad-25d3-4e86-9c5d-45207d21f6f5.png)
  double get smallerRemainder {
    return normalSize - smallerSize;
  }
}
