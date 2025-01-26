import 'package:flutter/material.dart';

import '../enums/button_type.dart';
import '../foundations/app_sizes.dart';

/// {@template app_button}
/// Un átomo que representa un botón con diferentes estilos
/// (elevated, outlined, text) e iconos.
/// {@endtemplate}
class AppButton extends StatelessWidget {
  /// {@macro app_button}
  const AppButton({
    super.key,
    required this.text,
    this.type = ButtonType.elevated,
    this.onPressed,
    this.icon,
  });

  ///Texto a mostrar en el botón.
  final String text;
  ///Tipo de botón a mostrar.
  final ButtonType type;
  ///Función opcional que se ejecutará al presionar el botón.
  final VoidCallback? onPressed;
  ///Icono a mostrar a la izquierda del texto.
  final Widget? icon;

  @override
  Widget build(BuildContext context) => switch (type) {
        ButtonType.elevated => ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.buttonPaddingHorizontal,
                  vertical: AppSizes.buttonPaddingVertical),
              elevation: AppSizes.buttonElevation,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.only(right: AppSizes.sm),
                    child: icon!,
                  ),
                Text(text),
              ],
            ),
          ),
        ButtonType.outlined => OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.buttonPaddingHorizontal,
                  vertical: AppSizes.buttonPaddingVertical),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.only(right: AppSizes.sm),
                    child: icon!,
                  ),
                Text(text),
              ],
            ),
          ),
        ButtonType.text => TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.buttonPaddingHorizontal,
                  vertical: AppSizes.buttonPaddingVertical),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.only(right: AppSizes.sm),
                    child: icon!,
                  ),
                Text(text),
              ],
            ),
          ),
        _ => Container()
      };
}
