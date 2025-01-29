import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_sizes.dart';

class AppInputDecoration {
  AppInputDecoration._();

  static InputDecoration style({String? hintText, Widget? suffixIcon, String? labelText,  bool isDarkMode = false}) =>
      InputDecoration(
        labelText: labelText,
        hintText: hintText,
        suffixIcon: suffixIcon,
        labelStyle: TextStyle(color: isDarkMode ? AppColors.onSecondaryDark : AppColors.disabled),
        hintStyle: TextStyle(color: AppColors.disabled),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
          borderSide: BorderSide(color: isDarkMode ?  AppColors.onSecondaryDark : AppColors.disabled),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
          borderSide: BorderSide(color: isDarkMode ?  AppColors.onPrimaryDark : AppColors.primaryLight),
        ),
        errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
          borderSide: BorderSide(color: Colors.red),
        ),
      );
}