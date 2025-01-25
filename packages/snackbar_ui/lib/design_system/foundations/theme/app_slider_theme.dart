import 'package:flutter/material.dart';

import '../app_colors.dart';

class AppSliderTheme {
  AppSliderTheme._();

  static final lightSliderTheme = SliderThemeData(
    activeTrackColor: AppColors.primaryLight,
    inactiveTrackColor: AppColors.disabled.withOpacity(0.3),
    thumbColor: AppColors.primaryLight,
    overlayColor: AppColors.primaryLight.withOpacity(0.1),
    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
    overlayShape: const RoundSliderOverlayShape(overlayRadius: 20.0),
    trackHeight: 3.0,
  );

  static final darkSliderTheme = SliderThemeData(
    activeTrackColor: AppColors.primaryDark,
    inactiveTrackColor: AppColors.disabled.withOpacity(0.3),
    thumbColor: AppColors.primaryDark,
    overlayColor: AppColors.primaryDark.withOpacity(0.1),
    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
    overlayShape: const RoundSliderOverlayShape(overlayRadius: 20.0),
    trackHeight: 3.0,
  );
}