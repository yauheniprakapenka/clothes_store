part of '../../../clothing_store.dart';

class _ClothesRepository {
  static List<_ClothesCategoryModel> getManCategoryClothes() =>
      _manCategoryClothes;

  static List<_ClothesCategoryModel> getWomanCategoryClothes() =>
      _womanCategoryClothes;

  static List<_ClothesCategoryModel> getGirlCategoryClothes() =>
      _girlCategoryClothes;

  static List<_ClothesCategoryModel> getBoyCategoryClothes() =>
      _boyCategoryClothes;

  static List<String> getWomanClothesImageUrl() => _womanClothesUrl;
  static List<String> getManClothesImageUrl() => _manClothesUrl;
  static List<String> getGirlClothesImageUrl() => _girlClothesUrl;
  static List<String> getBoyClothesImageUrl() => _boyClothesUrl;

  static List<String> getBrandClothesTitles() => _clothesBrandTitles;
}
