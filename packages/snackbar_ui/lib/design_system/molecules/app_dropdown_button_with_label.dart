import 'package:flutter/material.dart';

import '../atoms/app_text.dart';
import '../foundations/app_colors.dart';
import '../foundations/app_sizes.dart';

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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: labelText,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: AppSizes.fontSizeSm,
          ),
        ),
        const SizedBox(height: AppSizes.xs),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
          decoration: BoxDecoration(
            color: AppColors.onSecondaryLight,
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
          ),
          child: DropdownButton<T>(
            isExpanded: true,
            value: value,
            hint:  Text(hintText ?? ""),
            items: items,
            onChanged: onChanged,
            underline: Container(),
          ),
        ),
      ],
    );
  }
}