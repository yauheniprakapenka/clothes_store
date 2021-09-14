part of '../../../../clothing_store.dart';

class _ClothesRandomService {
  final _random = Random();

  int get cost {
    return randomIntFromRange(min: 8000, max: 30000);
  }

   int get size {
    return randomIntFromRange(min: 36, max: 52);
  }

  String get brand {
    final brand = _ClothesRepository.getBrandClothesTitles();
    final brandLength = brand.length;
    return brand[_random.nextInt(brandLength)];
  }

  String get womanUrlImageClothes {
    final clothes = _ClothesRepository.getWomanClothesImageUrl();
    final clothesLength = clothes.length;
    return clothes[_random.nextInt(clothesLength)];
  }

  String get manUrlImageClothes {
    final clothes = _ClothesRepository.getManClothesImageUrl();
    final clothesLength = clothes.length;
    return clothes[_random.nextInt(clothesLength)];
  }

  int discount(int currentCost) {
    final discountDiaposon = currentCost * 0.4;
    final flooredValue = discountDiaposon.floor();
    final maxCost = currentCost + flooredValue;
    return randomIntFromRange(min: currentCost, max: maxCost);
  }

  int activeStars(int maxStars) {
    return randomIntFromRange(min: 0, max: maxStars);
  }
}
