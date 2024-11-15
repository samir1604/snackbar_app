import 'package:flutter/material.dart';

import '../tokens/colors.dart';

class AppColorScheme {
  AppColorScheme._();

  //Light
  static const Color primaryLight = BaseColors.primaryLight;
  static const Color primaryContainerLight = BaseColors.primaryContainerLight;
  static const Color secondaryLight =  BaseColors.secondaryLight;
  static const Color secondaryContainerLight = BaseColors.secondaryContainerLight;
  static const Color ternaryLight = BaseColors.ternaryLight;

  //Dark
  static const Color primaryDark =  BaseColors.primaryDark;
  static const Color primaryContainerDark = BaseColors.primaryContainerDark;
  static const Color secondaryDark = BaseColors.secondaryDark;
  static const Color secondaryContainerDark = BaseColors.secondaryContainerDark;
  static const Color ternaryDark = BaseColors.ternaryDark;

  //Common
  static const Color error =  BaseColors.error;

  static ColorScheme lightScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primaryLight,
    surfaceTint: Color(0xff436370),
    onPrimary: Color(0xffffffff),
    primaryContainer: primaryContainerLight,
    onPrimaryContainer: Color(0xffe2f5ff),
    secondary: secondaryLight,
    onSecondary: Color(0xffffffff),
    secondaryContainer: secondaryContainerLight,
    onSecondaryContainer: Color(0xff001814),
    tertiary: ternaryLight,
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xfff1cb70),
    onTertiaryContainer: Color(0xff4d3900),
    error: error,
    onError: Color(0xffffffff),
    errorContainer: Color(0xfff67a5b),
    onErrorContainer: Color(0xff2a0400),
    surface: Color(0xfffff8f5),
    onSurface: Color(0xff1e1b19),
    onSurfaceVariant: Color(0xff4e453f),
    outline: Color(0xff80756e),
    outlineVariant: Color(0xffd2c4bc),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xfffff8f5),
    inversePrimary: Color(0xffabcbdb),
    primaryFixed: Color(0xffc6e8f8),
    onPrimaryFixed: Color(0xff001f29),
    primaryFixedDim: Color(0xffabcbdb),
    onPrimaryFixedVariant: Color(0xff2b4b58),
    secondaryFixed: Color(0xff9cf2e4),
    onSecondaryFixed: Color(0xff00201c),
    secondaryFixedDim: Color(0xff80d6c8),
    onSecondaryFixedVariant: Color(0xff005048),
    tertiaryFixed: Color(0xffffdf96),
    onTertiaryFixed: Color(0xff251a00),
    tertiaryFixedDim: Color(0xffe7c268),
    onTertiaryFixedVariant: Color(0xff5a4400),
    surfaceDim: Color(0xffe0d8d5),
    surfaceBright: Color(0xfffff8f5),
    surfaceContainerLowest: Color(0xffffffff),
    surfaceContainerLow: Color(0xfffaf2ee),
    surfaceContainer: Color(0xfff5ece8),
    surfaceContainerHigh: Color(0xffefe6e3),
    surfaceContainerHighest: Color(0xffe9e1dd),
  );

  static ColorScheme darkScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: primaryDark,
    surfaceTint: Color(0xffabcbdb),
    onPrimary: Color(0xff123441),
    primaryContainer: primaryContainerDark,
    onPrimaryContainer: Color(0xffaecfdf),
    secondary: secondaryDark,
    onSecondary: Color(0xff003731),
    secondaryContainer: secondaryContainerDark,
    onSecondaryContainer: Color(0xffffffff),
    tertiary: ternaryDark,
    onTertiary: Color(0xff3e2e00),
    tertiaryContainer: Color(0xffe4bf66),
    onTertiaryContainer: Color(0xff433200),
    error: error,
    onError: Color(0xff621100),
    errorContainer: Color(0xffc05237),
    onErrorContainer: Color(0xffffffff),
    surface: Color(0xff161311),
    onSurface: Color(0xffe9e1dd),
    onSurfaceVariant: Color(0xffd2c4bc),
    outline: Color(0xff9a8e87),
    outlineVariant: Color(0xff4e453f),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffe9e1dd),
    inversePrimary: Color(0xff436370),
    primaryFixed: Color(0xffc6e8f8),
    onPrimaryFixed: Color(0xff001f29),
    primaryFixedDim: Color(0xffabcbdb),
    onPrimaryFixedVariant: Color(0xff2b4b58),
    secondaryFixed: Color(0xff9cf2e4),
    onSecondaryFixed: Color(0xff00201c),
    secondaryFixedDim: Color(0xff80d6c8),
    onSecondaryFixedVariant: Color(0xff005048),
    tertiaryFixed: Color(0xffffdf96),
    onTertiaryFixed: Color(0xff251a00),
    tertiaryFixedDim: Color(0xffe7c268),
    onTertiaryFixedVariant: Color(0xff5a4400),
    surfaceDim: Color(0xff161311),
    surfaceBright: Color(0xff3c3836),
    surfaceContainerLowest: Color(0xff100e0c),
    surfaceContainerLow: Color(0xff1e1b19),
    surfaceContainer: Color(0xff221f1d),
    surfaceContainerHigh: Color(0xff2d2927),
    surfaceContainerHighest: Color(0xff383432),
  );
}
