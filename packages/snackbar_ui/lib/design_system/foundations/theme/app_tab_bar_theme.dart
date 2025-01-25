import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../typo.dart';

class AppTabBarTheme {
  AppTabBarTheme._();

  static final lightTabBarTheme = TabBarTheme(
    indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: AppColors.primaryLight, width: 2.0)),
    labelColor: AppColors.onPrimaryLight,
    unselectedLabelColor: AppColors.disabled,
    labelStyle:
        const TextStyle(fontSize: Typo.fontBodyMD, fontWeight: FontWeight.w500),
    unselectedLabelStyle:
        const TextStyle(fontSize: Typo.fontBodyMD, fontWeight: FontWeight.w400),
  );

  static final darkTabBarTheme = TabBarTheme(
    indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: AppColors.primaryDark, width: 2.0)),
    labelColor: AppColors.onPrimaryDark,
    unselectedLabelColor: AppColors.disabled,
    labelStyle:
        const TextStyle(fontSize: Typo.fontBodyMD, fontWeight: FontWeight.w500),
    unselectedLabelStyle:
        const TextStyle(fontSize: Typo.fontBodyMD, fontWeight: FontWeight.w400),
  );
}
