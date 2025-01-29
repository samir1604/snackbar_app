import 'package:flutter/material.dart';

import '../foundations/app_colors.dart';
import '../foundations/app_sizes.dart';

class AppRadio<T> extends StatelessWidget {
  const AppRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.activeColor,
    this.inactiveColor,
    this.size,
    this.activeIcon,
    this.inactiveIcon,
    this.isDarkMode = false,
  });

  const AppRadio.small({
    super.key,
    required this.value,
    required this.groupValue,
    required ValueChanged<T?> this.onChanged,
    this.activeColor,
    this.inactiveColor,
    this.isDarkMode = false,
  })  : size = AppSizes.iconSm,
        activeIcon = null,
        inactiveIcon = null;

  const AppRadio.medium({
    super.key,
    required this.value,
    required this.groupValue,
    required ValueChanged<T?> this.onChanged,
    this.activeColor,
    this.inactiveColor,
    this.isDarkMode = false,
  })  : size = AppSizes.iconMd,
        activeIcon = null,
        inactiveIcon = null;

  const AppRadio.large({
    super.key,
    required this.value,
    required this.groupValue,
    required ValueChanged<T?> this.onChanged,
    this.activeColor,
    this.inactiveColor,
    this.isDarkMode = false,
  })  : size = AppSizes.iconLg,
        activeIcon = null,
        inactiveIcon = null;

  const AppRadio.withIcons({
    super.key,
    required this.value,
    required this.groupValue,
    required ValueChanged<T?> this.onChanged,
    this.activeColor,
    this.inactiveColor,
    this.isDarkMode = false,
    this.activeIcon = Icons.check_circle,
    this.inactiveIcon = Icons.radio_button_unchecked,
  }) : size = AppSizes.iconMd;

  final T value;
  final T groupValue;
  final ValueChanged<T?>? onChanged;
  final Color? activeColor;
  final Color? inactiveColor;
  final double? size;
  final IconData? activeIcon;
  final IconData? inactiveIcon;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: size,
        height: size,
        child: Radio<T>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: activeColor ??
              (isDarkMode ? AppColors.onPrimaryDark : AppColors.primaryLight),
          fillColor: WidgetStateProperty.resolveWith(
            ((states) {
              if (states.contains(WidgetState.selected)) {
                return activeColor ??
                    (isDarkMode
                        ? AppColors.onPrimaryDark
                        : AppColors.primaryLight);
              } else {
                return inactiveColor ?? AppColors.disabled;
              }
            }),
          ),
          visualDensity: VisualDensity.compact,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          overlayColor: WidgetStatePropertyAll(Colors.transparent),
        ),
      );
}
