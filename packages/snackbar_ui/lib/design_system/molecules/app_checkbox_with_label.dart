import 'package:flutter/material.dart';

import '../atoms/atoms.dart';
import '../foundations/foundations.dart';

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
    this.controlAffinity = ListTileControlAffinity.leading,
    this.activeColor,
    this.inactiveColor,
    this.style,
    this.size,
    this.isDarkMode = false,
  });

  /// Texto a mostrar como etiqueta del checkbox.
  final String label;

  /// Valor inicial del checkbox.
  final bool value;

  ///Funcion que se ejecuta al seleccionar o deseleccionar el checkbox.
  final ValueChanged<bool?> onChanged;

  ///Define el modo de la app
  final bool isDarkMode;

  ///Define la posicion del checkbox
  final ListTileControlAffinity controlAffinity;

  ///Define el color del checkbox activo
  final Color? activeColor;

  ///Define el color del checkbox inactivo
  final Color? inactiveColor;

  ///Define el estilo del texto de la etiqueta
  final TextStyle? style;

  ///Define el tamaño del checkbox
  final double? size;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.xs),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (controlAffinity == ListTileControlAffinity.leading)
              SizedBox(
                  height: size,
                  width: size,
                  child: Checkbox(
                      value: value,
                      onChanged: onChanged,
                      activeColor: activeColor ?? primaryColor,
                      checkColor: activeColor != null ? Colors.white : null,
                      fillColor: WidgetStateProperty.resolveWith((states) =>
                          states.contains(WidgetState.selected)
                              ? activeColor ?? primaryColor
                              : inactiveColor ?? AppColors.disabled))),
            Checkbox(
              value: value,
              onChanged: onChanged,
            ),
            const SizedBox(width: AppSizes.sm),
            Expanded(
              child: AppText(
                text: label,
                style: style ?? AppStyles.bodyMd(isDarkMode: isDarkMode),
              ),
            ),
            if (controlAffinity == ListTileControlAffinity.trailing)
              SizedBox(
                  height: size,
                  width: size,
                  child: Checkbox(
                      value: value,
                      onChanged: onChanged,
                      activeColor: activeColor ?? primaryColor,
                      checkColor: activeColor != null ? Colors.white : null,
                      fillColor: WidgetStateProperty.resolveWith((states) =>
                          states.contains(WidgetState.selected)
                              ? activeColor ?? primaryColor
                              : inactiveColor ?? AppColors.disabled))),
          ],
        ),
      ),
    );
  }
}
