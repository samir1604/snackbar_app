import 'package:flutter/material.dart';

import '../tokens/colors.dart';

class AppColors {
  AppColors._();

  //Light
  static const Color backgroundLight = BaseColors.white;
  static const Color surfaceLight = BaseColors.softWhite;
  static const Color primaryLight = BaseColors.redPink;
  static const Color onPrimaryLight = BaseColors.deepGrey;
  static const Color onSecondaryLight = BaseColors.softWhite;
  static const Color accentLight = BaseColors.redPink;

  //Dark
  static const Color backgroundDark = BaseColors.midnightGrey;
  static const Color surfaceDark = BaseColors.deepGrey;
  static const Color primaryDark = BaseColors.redPink;
  static const Color onPrimaryDark = BaseColors.white;
  static const Color onSecondaryDark = BaseColors.steelGrey;
  static const Color accentDark = BaseColors.redPink;

  //Common
  static const Color disabled = BaseColors.midGrey;
  static const Color black54 =  Colors.black54;
  static const Color black12 = Colors.black12;
  static const Color white12 = Colors.white12;
  static const Color shadowGrey = Colors.grey;
  static Color? redShade800 = Colors.red[800];

  static MaterialColor getMaterialColorFromColor(Color color){
    final int r = color.red;
    final int g = color.green;
    final int b = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(r, g, b, .1),
      100: Color.fromRGBO(r, g, b, .2),
      200: Color.fromRGBO(r, g, b, .3),
      300: Color.fromRGBO(r, g, b, .4),
      400: Color.fromRGBO(r, g, b, .5),
      500: Color.fromRGBO(r, g, b, .6),
      600: Color.fromRGBO(r, g, b, .7),
      700: Color.fromRGBO(r, g, b, .8),
      800: Color.fromRGBO(r, g, b, .9),
      900: Color.fromRGBO(r, g, b, 1),
    };

    return MaterialColor(color.value, shades);
  }
}
