import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'typo.dart';

class AppStyles {
  AppStyles._();

  static TextStyle? titleH1({Color? textColor, bool isDarkMode = false}) => TextStyle(
      fontSize: Typo.fontTitleH1,
      fontWeight: FontWeight.w900,
      fontFamily: Typo.family,
      color: textColor ?? (isDarkMode ? AppColors.onPrimaryDark : AppColors.onPrimaryLight));

  static TextStyle? titleH2({Color? textColor, bool isDarkMode = false}) => TextStyle(
      fontSize: Typo.fontTitleH2,
      fontWeight: FontWeight.w800,
      fontFamily: Typo.family,
      color: textColor ?? (isDarkMode ? AppColors.onPrimaryDark : AppColors.onPrimaryLight));

  static TextStyle? titleH3({Color? textColor, bool isDarkMode = false}) => TextStyle(
      fontSize: Typo.fontTitleH3,
      fontWeight: FontWeight.w700,
      fontFamily: Typo.family,
      color: textColor ?? (isDarkMode ? AppColors.onPrimaryDark : AppColors.onPrimaryLight));

  static TextStyle? bodyMd({Color? textColor, bool isDarkMode = false}) => TextStyle(
      fontSize: Typo.fontBodyMD,
      fontWeight: FontWeight.w500,
      fontFamily: Typo.family,
      color: textColor ?? (isDarkMode ? AppColors.onPrimaryDark : AppColors.onPrimaryLight));

  static TextStyle? bodySM({Color? textColor, bool isDarkMode = false}) => TextStyle(
      fontSize: Typo.fontBodySM,
      fontWeight: FontWeight.w500,
      fontFamily: Typo.family,
      color: textColor ?? (isDarkMode ? AppColors.onPrimaryDark : AppColors.onPrimaryLight));

  static TextStyle? labelXS({Color? textColor, bool isDarkMode = false}) => TextStyle(
      fontSize: Typo.fontLabelXS,
      fontWeight: FontWeight.w400,
      fontFamily: Typo.family,
      color: textColor ?? (isDarkMode ? AppColors.onPrimaryDark : AppColors.onPrimaryLight));

  static TextStyle? labelXXS({Color? textColor, bool isDarkMode = false}) => TextStyle(
      fontSize: Typo.fontLabelXXS,
      fontWeight: FontWeight.w400,
      fontFamily: Typo.family,
      color: textColor ?? (isDarkMode ? AppColors.onPrimaryDark : AppColors.onPrimaryLight));
}
