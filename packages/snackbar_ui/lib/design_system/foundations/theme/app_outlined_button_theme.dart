import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../typo.dart';

class AppOutlinedButtonTheme {
  AppOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          enabledMouseCursor: SystemMouseCursors.click,
          shadowColor: AppColors.shadowGrey,
          side: WidgetStateBorderSide.resolveWith((states) => states
                  .contains(WidgetState.disabled)
              ? const BorderSide(color: AppColors.disabled, width: 1)
              : const BorderSide(color: AppColors.onPrimaryLight, width: 1)),
          backgroundColor: WidgetStateColor.resolveWith((states) =>
              states.contains(WidgetState.disabled)
                  ? AppColors.disabled.withOpacity(.1)
                  : Colors.transparent),
          foregroundColor: WidgetStateColor.resolveWith((states) =>
              states.contains(WidgetState.disabled)
                  ? AppColors.onPrimaryLight.withOpacity(.4)
                  : AppColors.onPrimaryLight),
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          textStyle: const TextStyle(
              fontSize: Typo.fontBodySM, fontWeight: FontWeight.w500),
          overlayColor: WidgetStateColor.resolveWith(
            (states) => states.contains(WidgetState.pressed)
                ? AppColors.black12
                : Colors.transparent,
          )));

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          enabledMouseCursor: SystemMouseCursors.click,
          shadowColor: AppColors.shadowGrey,
          side: WidgetStateBorderSide.resolveWith((states) =>
              states.contains(WidgetState.disabled)
                  ? const BorderSide(color: AppColors.disabled, width: 1)
                  : const BorderSide(color: AppColors.onPrimaryDark, width: 1)),
          backgroundColor: WidgetStateColor.resolveWith((states) =>
              states.contains(WidgetState.disabled)
                  ? AppColors.disabled.withOpacity(.1)
                  : Colors.transparent),
          foregroundColor: WidgetStateColor.resolveWith((states) =>
              states.contains(WidgetState.disabled)
                  ? AppColors.onPrimaryDark.withOpacity(.5)
                  : AppColors.onPrimaryDark),
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          textStyle: const TextStyle(
              fontSize: Typo.fontBodySM, fontWeight: FontWeight.w500),
          overlayColor: WidgetStateColor.resolveWith(
            (states) => states.contains(WidgetState.pressed)
                ? AppColors.white12
                : Colors.transparent,
          )));
}
