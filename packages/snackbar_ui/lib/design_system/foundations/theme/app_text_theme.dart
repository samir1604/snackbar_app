import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/foundations/typo.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: Typo.fontSizeH1,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: Typo.fontSizeH2,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: Typo.fontSizeH3,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: Typo.fontSizeH4,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: Typo.fontSizeH5,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: Typo.fontSizeH6,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: Typo.fontBodyLarge,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: Typo.fontBodyMedium,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: Typo.fontBodySmall,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: Typo.fontLabelLarge,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: Typo.fontLabelMedium,
      fontWeight: FontWeight.normal,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: Typo.fontSizeH1,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: Typo.fontSizeH2,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: Typo.fontSizeH3,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: Typo.fontSizeH4,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: Typo.fontSizeH5,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: Typo.fontSizeH6,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: Typo.fontBodyLarge,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: Typo.fontBodyMedium,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: Typo.fontBodySmall,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: Typo.fontLabelLarge,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: Typo.fontLabelMedium,
      fontWeight: FontWeight.normal,
    ),
  );
}