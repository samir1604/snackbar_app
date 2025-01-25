import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../typo.dart';

class AppDialogTheme {
  AppDialogTheme._();

  static final lightDialogTheme = DialogTheme(
    backgroundColor: AppColors.onPrimaryLight,
    titleTextStyle: TextStyle(
        color: AppColors.onPrimaryLight,
        fontWeight: FontWeight.w600,
        fontSize: Typo.fontTitleH3),
    contentTextStyle:
        TextStyle(color: AppColors.onPrimaryLight, fontSize: Typo.fontBodyMD),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  );

  static final darkDialogTheme = DialogTheme(
    backgroundColor: AppColors.surfaceDark,
    titleTextStyle: TextStyle(
        color: AppColors.onPrimaryDark,
        fontWeight: FontWeight.w600,
        fontSize: Typo.fontTitleH3),
    contentTextStyle:
        TextStyle(color: AppColors.onPrimaryDark, fontSize: Typo.fontBodyMD),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  );
}
