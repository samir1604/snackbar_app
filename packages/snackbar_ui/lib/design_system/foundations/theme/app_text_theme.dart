import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/foundations/typo.dart';

import '../app_colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
        fontSize: Typo.fontTitleH1,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryLight),
    displayMedium: TextStyle(
        fontSize: Typo.fontTitleH2,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryLight),
    displaySmall: TextStyle(
        fontSize: Typo.fontTitleH3,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryLight),
    headlineLarge: TextStyle(
        fontSize: Typo.fontTitleH3,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryLight),
    headlineMedium: TextStyle(
        fontSize: Typo.fontBodyMD,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryLight),
    headlineSmall: TextStyle(
        fontSize: Typo.fontBodyMD, color: AppColors.onPrimaryLight),
    titleLarge: TextStyle(
        fontSize: Typo.fontBodyMD,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryLight),
    titleMedium: TextStyle(
        fontSize: Typo.fontBodySM, color: AppColors.onPrimaryLight),
    titleSmall: TextStyle(
        fontSize: Typo.fontBodySM, color: AppColors.onPrimaryLight),
    bodyLarge: TextStyle(
        fontSize: Typo.fontBodySM, color: AppColors.onSecondaryLight),
    bodyMedium: TextStyle(
        fontSize: Typo.fontLabelXS, color: AppColors.onSecondaryLight),
    bodySmall: TextStyle(
        fontSize: Typo.fontLabelXXS, color: AppColors.onSecondaryLight),
    labelLarge: TextStyle(
        fontSize: Typo.fontBodySM, color: AppColors.onSecondaryLight),
    labelMedium: TextStyle(
        fontSize: Typo.fontLabelXS, color: AppColors.onSecondaryLight),
    labelSmall: TextStyle(
        fontSize: Typo.fontLabelXXS, color: AppColors.onSecondaryLight),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(
        fontSize: Typo.fontTitleH1,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryDark),
    displayMedium: TextStyle(
        fontSize: Typo.fontTitleH2,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryDark),
    displaySmall: TextStyle(
        fontSize: Typo.fontTitleH3,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryDark),
    headlineLarge: TextStyle(
        fontSize: Typo.fontTitleH3,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryDark),
    headlineMedium: TextStyle(
        fontSize: Typo.fontBodyMD,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryDark),
    headlineSmall: TextStyle(
        fontSize: Typo.fontBodyMD, color: AppColors.onPrimaryDark),
    titleLarge: TextStyle(
        fontSize: Typo.fontBodyMD,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryLight),
    titleMedium: TextStyle(
        fontSize: Typo.fontBodySM, color: AppColors.onPrimaryDark),
    titleSmall: TextStyle(
        fontSize: Typo.fontBodySM, color: AppColors.onPrimaryDark),
    bodyLarge: TextStyle(
        fontSize: Typo.fontBodySM, color: AppColors.onSecondaryDark),
    bodyMedium: TextStyle(
        fontSize: Typo.fontLabelXS, color: AppColors.onSecondaryDark),
    bodySmall: TextStyle(
        fontSize: Typo.fontLabelXXS, color: AppColors.onSecondaryDark),
    labelLarge: TextStyle(
        fontSize: Typo.fontBodySM, color: AppColors.onSecondaryDark),
    labelMedium: TextStyle(
        fontSize: Typo.fontLabelXS, color: AppColors.onSecondaryDark),
    labelSmall: TextStyle(
        fontSize: Typo.fontLabelXXS, color: AppColors.onSecondaryDark),
  );
}
