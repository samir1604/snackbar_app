import 'package:flutter/material.dart';

import '../app_colors.dart';

class AppFloatingActionButtonTheme {
  AppFloatingActionButtonTheme._();

  static final lightFloatingActionButtonTheme = FloatingActionButtonThemeData(
    backgroundColor: AppColors.primaryLight,
    foregroundColor: AppColors.backgroundLight,
    elevation: 4.0,
    hoverElevation: 8.0,
    focusElevation: 8.0,
    splashColor:  AppColors.backgroundLight.withOpacity(0.3),
    extendedTextStyle: const TextStyle(
        fontWeight: FontWeight.w500, fontSize: 16.0),
    extendedPadding:  const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),

  );

  static final darkFloatingActionButtonTheme = FloatingActionButtonThemeData(
    backgroundColor: AppColors.primaryDark,
    foregroundColor: AppColors.surfaceDark,
    elevation: 4.0,
    hoverElevation: 8.0,
    focusElevation: 8.0,
    splashColor:  AppColors.surfaceDark.withOpacity(0.3),
    extendedTextStyle: const TextStyle(
        fontWeight: FontWeight.w500, fontSize: 16.0),
    extendedPadding:  const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  );
}