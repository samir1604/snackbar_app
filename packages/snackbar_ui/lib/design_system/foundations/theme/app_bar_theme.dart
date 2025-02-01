import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_typo.dart';

class AppThemeBar {
  AppThemeBar._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.surfaceLight,
    foregroundColor: AppColors.onPrimaryLight,
    iconTheme: IconThemeData(color: AppColors.onPrimaryLight),
    actionsIconTheme: IconThemeData(color: AppColors.onPrimaryLight),
    titleTextStyle: TextStyle(
      fontSize: AppTypo.fontBodyMD,
      fontWeight: FontWeight.w500,
      color: AppColors.onPrimaryLight,
    ),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.surfaceDark,
    foregroundColor: AppColors.onPrimaryDark,
    iconTheme: IconThemeData(color: AppColors.onPrimaryDark),
    actionsIconTheme: IconThemeData(color: AppColors.onPrimaryDark),
    titleTextStyle: TextStyle(
      fontSize: AppTypo.fontBodyMD,
      fontWeight: FontWeight.w500,
      color: AppColors.onPrimaryDark,
    ),
  );
}
