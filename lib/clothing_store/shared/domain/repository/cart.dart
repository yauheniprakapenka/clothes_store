part of '../../../clothing_store.dart';

class _CartRepository {
  static List<_ClothesModel> getClothesInCart() => clothesInCard;
  static void addClothesInCard(_ClothesModel clothes) =>
      clothesInCard.add(clothes);
}
