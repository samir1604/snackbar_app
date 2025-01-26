import 'package:flutter/material.dart';

import '../atoms/app_text.dart';
import '../foundations/app_sizes.dart';

/// {@template checkbox_with_label}
/// Una molécula que representa un checkbox con una etiqueta asociada.
/// {@endtemplate}
class CheckboxWithLabel extends StatelessWidget {
  /// {@macro checkbox_with_label}
  const CheckboxWithLabel({
    super.key,
    required this.label,
    this.value = false,
    required this.onChanged,
  });

  /// Texto a mostrar como etiqueta del checkbox.
  final String label;

  /// Valor inicial del checkbox.
  final bool value;

  ///Funcion que se ejecuta al seleccionar o deseleccionar el checkbox.
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.xs),
        child: Row(
          children: [
            Checkbox(
              value: value,
              onChanged: onChanged,
            ),
            const SizedBox(width: AppSizes.sm),
            Expanded(
              child: AppText(
                text: label,
                style: const TextStyle(
                    fontWeight: FontWeight.w400, fontSize: AppSizes.fontSizeMd),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
