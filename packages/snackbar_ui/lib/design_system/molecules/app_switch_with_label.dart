import 'package:flutter/material.dart';

import '../atoms/app_text.dart';
import '../foundations/app_sizes.dart';

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
  });

  /// Texto a mostrar como etiqueta del switch.
  final String label;

  /// Valor inicial del switch.
  final bool value;

  ///Función que se ejecuta al activar o desactivar el switch.
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
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
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: AppSizes.fontSizeMd,
                  )
              ),
            ),
            Switch(
              value: value,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}