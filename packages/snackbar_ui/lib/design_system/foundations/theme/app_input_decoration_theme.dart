import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../typo.dart';

class AppInputDecorationTheme {
  AppInputDecorationTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    border: _createInputBorder(8.0, 1.0, AppColors.disabled),
    focusedBorder: _createInputBorder(8.0, 2.0, AppColors.primaryLight),
    errorBorder: _createInputBorder(8.0, 1.0, AppColors.redShade800),
    focusedErrorBorder: _createInputBorder(8.0, 2.0, AppColors.redShade800),
    enabledBorder: _createInputBorder(8.0, 1.0, AppColors.disabled),
    disabledBorder:
        _createInputBorder(8.0, 1.0, AppColors.disabled.withOpacity(.5)),
    filled: true,
    fillColor: AppColors.surfaceLight,
    labelStyle: _createTextStyle(
      Typo.fontBodySM,
      fontWeight: FontWeight.normal,
      fontColor: AppColors.onPrimaryLight,
    ),
    floatingLabelStyle:
        _createTextStyle(Typo.fontLabelXS, fontColor: AppColors.primaryLight),
    hintStyle: _createTextStyle(Typo.fontBodySM, fontColor: AppColors.disabled),
    errorStyle:
        _createTextStyle(Typo.fontLabelXS, fontColor: AppColors.redShade800),
    contentPadding:
        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
    iconColor: AppColors.disabled,
    alignLabelWithHint: true,
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    border: _createInputBorder(8.0, 1.0, AppColors.disabled),
    focusedBorder: _createInputBorder(8.0, 2.0, AppColors.primaryDark),
    errorBorder: _createInputBorder(8.0, 1.0, AppColors.redShade800),
    focusedErrorBorder: _createInputBorder(8.0, 2.0, AppColors.redShade800),
    enabledBorder: _createInputBorder(8.0, 1.0, AppColors.disabled),
    disabledBorder:
        _createInputBorder(8.0, 1.0, AppColors.disabled.withOpacity(.5)),
    filled: true,
    fillColor: AppColors.surfaceLight,
    labelStyle: _createTextStyle(
      Typo.fontBodySM,
      fontWeight: FontWeight.normal,
      fontColor: AppColors.onPrimaryDark,
    ),
    floatingLabelStyle:
        _createTextStyle(Typo.fontLabelXS, fontColor: AppColors.primaryDark),
    hintStyle: _createTextStyle(Typo.fontBodySM, fontColor: AppColors.disabled),
    errorStyle:
        _createTextStyle(Typo.fontLabelXS, fontColor: AppColors.redShade800),
    contentPadding:
        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
    iconColor: AppColors.disabled,
    alignLabelWithHint: true,
  );

  static OutlineInputBorder _createInputBorder(
    double borderRadius,
    double borderWidth,
    Color? borderColor,
  ) =>
      const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
              width: borderWidth, color: borderColor ?? Colors.transparent));

  static TextStyle _createTextStyle(double fontSize,
          {FontWeight? fontWeight, Color? fontColor}) =>
      TextStyle().copyWith(
          fontSize: fontSize, fontWeight: fontWeight, color: fontColor);
}
