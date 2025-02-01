import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_typo.dart';

class AppStyles {
  AppStyles._();

  static TextStyle? titleH1({Color? textColor, bool isDarkMode = false}) => TextStyle(
      fontSize: AppTypo.fontTitleH1,
      fontWeight: FontWeight.w900,
      fontFamily: AppTypo.family,
      color: textColor ?? (isDarkMode ? AppColors.onPrimaryDark : AppColors.onPrimaryLight));

  static TextStyle? titleH2({Color? textColor, bool isDarkMode = false}) => TextStyle(
      fontSize: AppTypo.fontTitleH2,
      fontWeight: FontWeight.w800,
      fontFamily: AppTypo.family,
      color: textColor ?? (isDarkMode ? AppColors.onPrimaryDark : AppColors.onPrimaryLight));

  static TextStyle? titleH3({Color? textColor, bool isDarkMode = false}) => TextStyle(
      fontSize: AppTypo.fontTitleH3,
      fontWeight: FontWeight.w700,
      fontFamily: AppTypo.family,
      color: textColor ?? (isDarkMode ? AppColors.onPrimaryDark : AppColors.onPrimaryLight));

  static TextStyle? bodyMd({Color? textColor, bool isDarkMode = false}) => TextStyle(
      fontSize: AppTypo.fontBodyMD,
      fontWeight: FontWeight.w500,
      fontFamily: AppTypo.family,
      color: textColor ?? (isDarkMode ? AppColors.onPrimaryDark : AppColors.onPrimaryLight));

  static TextStyle? bodySM({Color? textColor, bool isDarkMode = false}) => TextStyle(
      fontSize: AppTypo.fontBodySM,
      fontWeight: FontWeight.w500,
      fontFamily: AppTypo.family,
      color: textColor ?? (isDarkMode ? AppColors.onPrimaryDark : AppColors.onPrimaryLight));

  static TextStyle? labelXS({Color? textColor, bool isDarkMode = false}) => TextStyle(
      fontSize: AppTypo.fontLabelXS,
      fontWeight: FontWeight.w400,
      fontFamily: AppTypo.family,
      color: textColor ?? (isDarkMode ? AppColors.onPrimaryDark : AppColors.onPrimaryLight));

  static TextStyle? labelXXS({Color? textColor, bool isDarkMode = false}) => TextStyle(
      fontSize: AppTypo.fontLabelXXS,
      fontWeight: FontWeight.w400,
      fontFamily: AppTypo.family,
      color: textColor ?? (isDarkMode ? AppColors.onPrimaryDark : AppColors.onPrimaryLight));
}
