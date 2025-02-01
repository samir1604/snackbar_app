import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_typo.dart';

class AppPopupMenuButtonTheme {
  AppPopupMenuButtonTheme._();

  static final lightPopupMenuButtonTheme = PopupMenuThemeData(
    color: AppColors.onSecondaryLight,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    textStyle:
        TextStyle(color: AppColors.onPrimaryLight, fontSize: AppTypo.fontBodySM),
    elevation: 4.0,
  );

  static final darkPopupMenuButtonTheme = PopupMenuThemeData(
    color: AppColors.surfaceDark,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    textStyle:
        TextStyle(color: AppColors.onPrimaryDark, fontSize: AppTypo.fontBodySM),
    elevation: 4.0,
  );
}
