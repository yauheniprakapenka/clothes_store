import 'package:flutter/material.dart';
import 'clothing_store/clothing_store.dart';

void main() {
  runApp(const Clothes());
}

class Clothes extends StatelessWidget {
  const Clothes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildTheme(),
      home: const ClothingStorePage(),
    );
  }
}

ThemeData buildTheme() {
  const scheme = ColorScheme.light(
    primary: Color(0xFF4a5a62),
    onPrimary: Colors.white,
    secondary: Color(0xFFA2ACB1),
    onSecondary: Colors.white,
  );
  return ThemeData.from(colorScheme: scheme);
}
