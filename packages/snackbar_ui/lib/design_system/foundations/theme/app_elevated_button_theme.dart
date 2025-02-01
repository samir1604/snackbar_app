import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../app_typo.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          enabledMouseCursor: SystemMouseCursors.click,
          shadowColor: AppColors.shadowGrey,
          side: BorderSide(color: AppColors.redShade800!),
          backgroundColor: WidgetStateColor.resolveWith((states) =>
              states.contains(WidgetState.disabled)
                  ? AppColors.disabled.withOpacity(.5)
                  : AppColors.primaryLight),
          foregroundColor: WidgetStateColor.resolveWith((states) =>
              states.contains(WidgetState.disabled)
                  ? AppColors.onPrimaryLight.withOpacity(.5)
                  : AppColors.backgroundLight),
          elevation: 2.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          textStyle: const TextStyle(
              fontSize: AppTypo.fontBodySM, fontWeight: FontWeight.w500),
          overlayColor: WidgetStateColor.resolveWith(
            (states) => states.contains(WidgetState.pressed)
                ? AppColors.black12
                : Colors.transparent,
          )));

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          enabledMouseCursor: SystemMouseCursors.click,
          shadowColor: AppColors.shadowGrey,
          side: const BorderSide(color: AppColors.surfaceDark),
          backgroundColor: WidgetStateColor.resolveWith((states) =>
              states.contains(WidgetState.disabled)
                  ? AppColors.disabled.withOpacity(.5)
                  : AppColors.primaryDark),
          foregroundColor: WidgetStateColor.resolveWith((states) =>
              states.contains(WidgetState.disabled)
                  ? AppColors.onPrimaryDark.withOpacity(.5)
                  : AppColors.surfaceDark),
          elevation: 2.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          textStyle: const TextStyle(
              fontSize: AppTypo.fontBodySM, fontWeight: FontWeight.w500),
          overlayColor: WidgetStateColor.resolveWith(
            (states) => states.contains(WidgetState.pressed)
                ? AppColors.white12
                : Colors.transparent,
          )));
}
