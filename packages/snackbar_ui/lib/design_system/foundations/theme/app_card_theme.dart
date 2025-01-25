import 'package:flutter/material.dart';

import '../app_colors.dart';

class AppCardTheme {
  AppCardTheme._();

  static final lightCardTheme = CardTheme(
    color: AppColors.onSecondaryLight,
    elevation: 2.0,
    shadowColor: AppColors.shadowGrey,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  );

  static final darkCardTheme = CardTheme(
    color: AppColors.surfaceDark,
    elevation: 2.0,
    shadowColor: AppColors.shadowGrey,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  );
}
