import 'package:flutter/material.dart';

const Color PRIMARY_COLOR = Color(0xFF5C2018);
const Color PRIMARY_ACCENT_COLOR = Color(0xFFBC4639);
const Color SECONDARY_COLOR = Color(0xFFBC4639);
const Color SHADE_COLOR = Color(0xFFD4A59A);
const Color TERTIARY_COLOR = Color.fromARGB(255, 248, 234, 231);

//const Color PRIMARY_COLOR = Color(0xFF5DA2D5);
//const Color PRIMARY_ACCENT_COLOR = Color(0xFFF78888);
//const Color SECONDARY_COLOR = Color(0xFF90CCF4);
//const Color SHADE_COLOR = Color(0xFFD4A59A);
//const Color TERTIARY_COLOR = Color(0xFFECECEC);

//const Color PRIMARY_COLOR = Color(0xFF00887A);
//const Color PRIMARY_ACCENT_COLOR = Color(0xFFF78888);
//const Color SECONDARY_COLOR = Color(0xFF77A6F7);
//const Color SHADE_COLOR = Color(0xFFFFCCBC);
//const Color TERTIARY_COLOR = Color(0xFFFFFFFF);

//const Color PRIMARY_COLOR = Color(0xFFAC3B81);
//const Color PRIMARY_ACCENT_COLOR = Color(0xFFF78888);
//const Color SECONDARY_COLOR = Color(0xFF123C69);
//const Color SHADE_COLOR = Color(0xFFEDC7B7);
//const Color TERTIARY_COLOR = Color(0xFFEEE2DC);

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}
