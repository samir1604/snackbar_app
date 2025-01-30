import 'package:flutter/material.dart';

import '../atoms/app_text.dart';
import '../foundations/foundations.dart';

/// {@template switch_with_label}
/// Una molécula que representa un switch con una etiqueta asociada.
/// {@endtemplate}
class SwitchWithLabel extends StatelessWidget {
  /// {@macro switch_with_label}
  const SwitchWithLabel({
    super.key,
    required this.label,
    this.value = false,
    required this.onChanged,
    this.isDarkMode = false,
    this.labelStyle,
    this.activeColor,
    this.inactiveTrackColor,
    this.inactiveThumbColor,
    this.activeIcon,
    this.inactiveIcon,
    this.thumbSize,
  });

  /// Texto a mostrar como etiqueta del switch.
  final String label;

  /// Valor inicial del switch.
  final bool value;

  ///Función que se ejecuta al activar o desactivar el switch.
  final ValueChanged<bool> onChanged;

  ///Define si se esta usando el modo oscuro
  final bool isDarkMode;

  ///Define el estilo del texto del label
  final TextStyle? labelStyle;

  ///Define el color del switch en su estado activo
  final Color? activeColor;

  ///Define el color del track del switch inactivo
  final Color? inactiveTrackColor;

  ///Define el color del thumb del switch inactivo
  final Color? inactiveThumbColor;

  ///Define la imagen que tendra el thumb activo
  final IconData? activeIcon;

  ///Define la imagen que tendra el thumb inactivo
  final IconData? inactiveIcon;

  ///Define el tamaño del thumb
  final double? thumbSize;

  @override
  Widget build(BuildContext context) {
    var primaryColor =
        isDarkMode ? AppColors.primaryDark : AppColors.primaryLight;
    var onSecondaryColor =
        isDarkMode ? AppColors.onSecondaryDark : AppColors.onSecondaryLight;

    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.xs),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AppText(
                  text: label,
                  style:
                      labelStyle ?? AppStyles.bodyMd(isDarkMode: isDarkMode)),
            ),
            SizedBox(
              height: thumbSize,
              width: thumbSize,
              child: Switch(
                  value: value,
                  onChanged: onChanged,
                  activeColor: activeColor ?? primaryColor,
                  inactiveThumbColor: inactiveThumbColor ?? onSecondaryColor,
                  inactiveTrackColor: inactiveTrackColor ?? AppColors.disabled,
                  thumbColor: WidgetStateProperty.resolveWith((states) {
                    if (states.contains(WidgetState.selected)) {
                      return activeColor ?? primaryColor;
                    } else {
                      return inactiveThumbColor ?? onSecondaryColor;
                    }
                  }),
                  thumbIcon: WidgetStateProperty.resolveWith((states) {
                    if (states.contains(WidgetState.selected)) {
                      return activeIcon != null
                          ? Icon(activeIcon!, size: thumbSize)
                          : null;
                    } else {
                      return inactiveIcon != null ? Icon(inactiveIcon!) : null;
                    }
                  })),
            )
          ],
        ),
      ),
    );
  }
}
