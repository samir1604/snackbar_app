import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/foundations/app_colors.dart';

class AppColorScheme {
  AppColorScheme._();

  static ColorScheme lightScheme = ColorScheme.light(
      brightness: Brightness.light,
      primary: AppColors.primaryLight,
      onPrimary: AppColors.onPrimaryLight,
      secondary: AppColors.onSecondaryLight,
      surface: AppColors.surfaceLight,
      onSurface: AppColors.onSecondaryLight);

  static ColorScheme darkScheme = ColorScheme.dark(
      brightness: Brightness.dark,
      primary: AppColors.primaryDark,
      secondary: AppColors.onSecondaryDark,
      surface: AppColors.surfaceDark,
      onPrimary: AppColors.onPrimaryDark,
      onSurface: AppColors.onSecondaryDark);
}
