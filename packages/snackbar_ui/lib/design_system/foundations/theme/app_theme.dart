import 'package:flutter/material.dart';

import 'package:snackbar_ui/design_system/foundations/theme/app_card_theme.dart';
import 'package:snackbar_ui/design_system/foundations/theme/app_floating_action_button_theme.dart';
import 'package:snackbar_ui/design_system/foundations/theme/app_popup_menu_button_theme.dart';
import 'package:snackbar_ui/design_system/foundations/theme/app_slider_theme.dart';
import 'package:snackbar_ui/design_system/foundations/theme/app_tab_bar_theme.dart';

import '../app_colors.dart';
import 'app_bar_theme.dart';
import 'app_bottom_sheet_theme.dart';
import 'app_checkbox_theme.dart';
import 'app_chip_theme.dart';
import 'app_color_scheme.dart';
import 'app_dialog_theme.dart';
import 'app_elevated_button_theme.dart';
import 'app_outlined_button_theme.dart';
import 'app_text_theme.dart';
import 'app_input_decoration_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: AppColors.primaryLight,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    colorScheme: AppColorScheme.lightScheme,
    primarySwatch: AppColors.getMaterialColorFromColor(AppColors.primaryLight),
    textTheme: AppTextTheme.lightTextTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    appBarTheme: AppThemeBar.lightAppBarTheme,
    checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppInputDecorationTheme.lightInputDecorationTheme,
    floatingActionButtonTheme:
        AppFloatingActionButtonTheme.lightFloatingActionButtonTheme,
    dialogTheme: AppDialogTheme.lightDialogTheme,
    cardTheme: AppCardTheme.lightCardTheme,
    popupMenuTheme: AppPopupMenuButtonTheme.lightPopupMenuButtonTheme,
    sliderTheme: AppSliderTheme.lightSliderTheme,
    tabBarTheme: AppTabBarTheme.lightTabBarTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryDark,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    colorScheme: AppColorScheme.darkScheme,
    primarySwatch: AppColors.getMaterialColorFromColor(AppColors.primaryDark),
    textTheme: AppTextTheme.darkTextTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    appBarTheme: AppThemeBar.darkAppBarTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AppInputDecorationTheme.darkInputDecorationTheme,
    floatingActionButtonTheme:
        AppFloatingActionButtonTheme.darkFloatingActionButtonTheme,
    dialogTheme: AppDialogTheme.darkDialogTheme,
    cardTheme: AppCardTheme.darkCardTheme,
    popupMenuTheme: AppPopupMenuButtonTheme.darkPopupMenuButtonTheme,
    sliderTheme: AppSliderTheme.darkSliderTheme,
    tabBarTheme: AppTabBarTheme.darkTabBarTheme,
  );
}
