import 'package:flutter/material.dart';

import '../app_colors.dart';

class AppChipTheme {
  AppChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    elevation: 2.0,
    pressElevation: 4.0,
    showCheckmark: false,
    backgroundColor: AppColors.surfaceLight,
    deleteIconColor: AppColors.onPrimaryLight,
    checkmarkColor: AppColors.onPrimaryLight,
    disabledColor: AppColors.disabled.withOpacity(.5),
    selectedColor: AppColors.primaryLight,
    labelStyle: const TextStyle(color: AppColors.onPrimaryLight),
    secondaryLabelStyle: const TextStyle(color: AppColors.onPrimaryLight),
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
    side: BorderSide(color: AppColors.onPrimaryLight),
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    elevation: 2.0,
    pressElevation: 4.0,
    showCheckmark: false,
    backgroundColor: AppColors.surfaceDark,
    deleteIconColor: AppColors.onPrimaryDark,
    checkmarkColor: AppColors.onPrimaryDark,
    disabledColor: AppColors.disabled.withOpacity(.5),
    selectedColor: AppColors.primaryDark,
    labelStyle: const TextStyle(color: AppColors.onPrimaryDark),
    secondaryLabelStyle: const TextStyle(color: AppColors.onPrimaryDark),
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
    side: BorderSide(color: AppColors.onPrimaryDark),
  );
}
