import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/foundations/app_typo.dart';

import '../app_colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
        fontSize: AppTypo.fontTitleH1,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryLight),
    displayMedium: TextStyle(
        fontSize: AppTypo.fontTitleH2,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryLight),
    displaySmall: TextStyle(
        fontSize: AppTypo.fontTitleH3,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryLight),
    headlineLarge: TextStyle(
        fontSize: AppTypo.fontTitleH3,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryLight),
    headlineMedium: TextStyle(
        fontSize: AppTypo.fontBodyMD,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryLight),
    headlineSmall:
        TextStyle(fontSize: AppTypo.fontBodyMD, color: AppColors.onPrimaryLight),
    titleLarge: TextStyle(
        fontSize: AppTypo.fontBodyMD,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryLight),
    titleMedium:
        TextStyle(fontSize: AppTypo.fontBodySM, color: AppColors.onPrimaryLight),
    titleSmall:
        TextStyle(fontSize: AppTypo.fontBodySM, color: AppColors.onPrimaryLight),
    bodyLarge:
        TextStyle(fontSize: AppTypo.fontBodySM, color: AppColors.onSecondaryLight),
    bodyMedium: TextStyle(
        fontSize: AppTypo.fontLabelXS, color: AppColors.onSecondaryLight),
    bodySmall: TextStyle(
        fontSize: AppTypo.fontLabelXXS, color: AppColors.onSecondaryLight),
    labelLarge:
        TextStyle(fontSize: AppTypo.fontBodySM, color: AppColors.onSecondaryLight),
    labelMedium: TextStyle(
        fontSize: AppTypo.fontLabelXS, color: AppColors.onSecondaryLight),
    labelSmall: TextStyle(
        fontSize: AppTypo.fontLabelXXS, color: AppColors.onSecondaryLight),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(
        fontSize: AppTypo.fontTitleH1,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryDark),
    displayMedium: TextStyle(
        fontSize: AppTypo.fontTitleH2,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryDark),
    displaySmall: TextStyle(
        fontSize: AppTypo.fontTitleH3,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryDark),
    headlineLarge: TextStyle(
        fontSize: AppTypo.fontTitleH3,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryDark),
    headlineMedium: TextStyle(
        fontSize: AppTypo.fontBodyMD,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryDark),
    headlineSmall:
        TextStyle(fontSize: AppTypo.fontBodyMD, color: AppColors.onPrimaryDark),
    titleLarge: TextStyle(
        fontSize: AppTypo.fontBodyMD,
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimaryLight),
    titleMedium:
        TextStyle(fontSize: AppTypo.fontBodySM, color: AppColors.onPrimaryDark),
    titleSmall:
        TextStyle(fontSize: AppTypo.fontBodySM, color: AppColors.onPrimaryDark),
    bodyLarge:
        TextStyle(fontSize: AppTypo.fontBodySM, color: AppColors.onSecondaryDark),
    bodyMedium:
        TextStyle(fontSize: AppTypo.fontLabelXS, color: AppColors.onSecondaryDark),
    bodySmall: TextStyle(
        fontSize: AppTypo.fontLabelXXS, color: AppColors.onSecondaryDark),
    labelLarge:
        TextStyle(fontSize: AppTypo.fontBodySM, color: AppColors.onSecondaryDark),
    labelMedium:
        TextStyle(fontSize: AppTypo.fontLabelXS, color: AppColors.onSecondaryDark),
    labelSmall: TextStyle(
        fontSize: AppTypo.fontLabelXXS, color: AppColors.onSecondaryDark),
  );
}
