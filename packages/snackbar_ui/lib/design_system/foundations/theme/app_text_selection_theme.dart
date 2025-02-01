import 'package:flutter/material.dart';

import '../foundations.dart';

class AppTextSelectionTheme {
  AppTextSelectionTheme._();

  static TextSelectionThemeData lightTextSelection = TextSelectionThemeData(
    cursorColor: AppColors.disabled.withOpacity(.5),
    selectionColor: AppColors.disabled.withOpacity(.5),
    selectionHandleColor: AppColors.disabled.withOpacity(.5),
  );

  static TextSelectionThemeData darkTextSelection = TextSelectionThemeData(
    cursorColor: AppColors.disabled.withOpacity(.5),
    selectionColor: AppColors.disabled.withOpacity(.5),
    selectionHandleColor: AppColors.disabled.withOpacity(.5),
  );
}