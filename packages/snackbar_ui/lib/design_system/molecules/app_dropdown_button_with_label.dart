import 'package:flutter/material.dart';

import '../atoms/atoms.dart';
import '../foundations/foundations.dart';

/// {@template app_dropdown_button_with_label}
/// Una molécula que representa un botón desplegable con una etiqueta.
/// {@endtemplate}
class AppDropdownButtonWithLabel<T> extends StatelessWidget {
  /// {@macro dropdown_button_with_label}
  const AppDropdownButtonWithLabel({
    super.key,
    required this.labelText,
    required this.items,
    required this.onChanged,
    this.value,
    this.hintText,
    this.isDarkMode = false,
    this.decoration,
    this.labelStyle,
    this.dropdownStyle,
  });

  /// Texto a mostrar como etiqueta del dropdown.
  final String labelText;

  ///Items a mostrar en el dropdown.
  final List<DropdownMenuItem<T>> items;

  ///Funcion que se ejecuta al seleccionar un item del dropdown.
  final ValueChanged<T?>? onChanged;

  /// Valor seleccionado del dropdown
  final T? value;

  /// Texto a mostrar como hint del dropdown.
  final String? hintText;

  ///Define si se esta usando el modo oscuro
  final bool isDarkMode;

  ///Permite personalizar la decoracion del dropdown
  final BoxDecoration? decoration;

  ///Permite personalizar el estilo del texto del label
  final TextStyle? labelStyle;

  ///Permite personalizar el estilo del texto del dropdown
  final TextStyle? dropdownStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: labelText,
          style: labelStyle ?? AppStyles.bodySM(isDarkMode: isDarkMode),
        ),
        const SizedBox(height: AppSizes.xs),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
          decoration: decoration ??
              BoxDecoration(
                color: AppColors.onSecondaryLight,
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
              ),
          child: DropdownButton<T>(
            isExpanded: true,
            value: value,
            hint: Text(hintText ?? "", style: dropdownStyle),
            items: items,
            onChanged: onChanged,
            underline: Container(),
          ),
        ),
      ],
    );
  }
}
