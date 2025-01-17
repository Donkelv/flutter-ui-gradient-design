import 'package:flutter/material.dart';

class StrollAppColors {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  StrollAppColors._();

  static const Color white = Color(0xffFFFFFF);
  static const Color white1 = Color(0xFFF5F5F5);
  static const Color white2 = Color(0xFFC4C4C4);
  static const Color white3 = Color(0xFFE5E5E5);
  static const Color black = Color(0xff000000);
  static const Color black1 = Color(0xFF232A2E);
  static const Color black2 = Color(0xFF0F1115);
  static const Color black3 = Color(0xFF121517);
  static const Color black4 = Color(0xFF121518);
  static const Color primary = Color(0xFF8B88EF);
  static const Color primary1 = Color(0xFFCCC8FF);
  static const Color primary2 = Color(0xFFCBC9FF);
  static const Color primary3 = Color(0xFFB5B2FF);

  static Color getShade(Color color, {bool darker = false, double value = .1}) {
    assert(value >= 0 && value <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness(
        (darker ? (hsl.lightness - value) : (hsl.lightness + value))
            .clamp(0.0, 1.0));

    return hslDark.toColor();
  }
}
