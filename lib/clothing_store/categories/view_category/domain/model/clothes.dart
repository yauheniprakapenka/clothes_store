part of '../../../../clothing_store.dart';

class _ClothesModel {
  final String imageUrl, cost, title, discount, size;

  _ClothesModel({
    required this.imageUrl,
    required this.cost,
    required this.title,
    required this.discount,
    required this.size,
  });

  @override
  String toString() {
    return '_ClothesModel(discount: $discount, cost: $cost, title: $title, imageUrl: $imageUrl, size: $size)';
  }
}
