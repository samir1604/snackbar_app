import 'package:flutter/material.dart';

import '../app_colors.dart';

class AppCheckboxTheme {
  AppCheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    splashRadius: 20.0,
    visualDensity: VisualDensity.compact,
    mouseCursor: WidgetStatePropertyAll<MouseCursor>(SystemMouseCursors.click),
    overlayColor: WidgetStatePropertyAll<Color>(AppColors.black12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    checkColor: WidgetStatePropertyAll<Color>(AppColors.backgroundLight),
    fillColor: WidgetStateColor.resolveWith((states) =>
        states.contains(WidgetState.disabled)
            ? AppColors.disabled
            : AppColors.onPrimaryLight),
    side: WidgetStateBorderSide.resolveWith((states) =>
        states.contains(WidgetState.disabled)
            ? const BorderSide(color: AppColors.disabled)
            : const BorderSide(color: AppColors.onPrimaryLight)),
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    splashRadius: 20.0,
    visualDensity: VisualDensity.compact,
    mouseCursor: WidgetStatePropertyAll<MouseCursor>(SystemMouseCursors.click),
    overlayColor: WidgetStatePropertyAll<Color>(AppColors.black12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    checkColor: WidgetStatePropertyAll<Color>(AppColors.surfaceDark),
    fillColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return AppColors.disabled;
      } else if (states.contains(WidgetState.selected)) {
        return AppColors.primaryDark;
      } else {
        return AppColors.onSecondaryDark;
      }
    }),
    side: WidgetStateBorderSide.resolveWith((states) =>
        states.contains(WidgetState.disabled)
            ? BorderSide(color: AppColors.disabled)
            : const BorderSide(color: AppColors.onPrimaryDark)),
  );
}
