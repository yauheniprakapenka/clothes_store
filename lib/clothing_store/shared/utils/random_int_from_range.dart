import 'dart:math';

int randomIntFromRange({required int min, required int max}) {
  final random = Random();
  final maxInclusive = max + 1;
  return min + (random.nextInt(maxInclusive - min));
}
