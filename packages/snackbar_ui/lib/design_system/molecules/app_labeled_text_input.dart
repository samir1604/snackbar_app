import 'package:flutter/material.dart';
import 'package:snackbar_ui/snackbar_ui.dart';

import '../foundations/typo.dart';

/// {@template app_labeled_text_input}
/// Una molécula que combina una etiqueta con un campo de texto, facilitando la
/// entrada de información por parte del usuario.
/// {@endtemplate}
class AppLabeledTextInput extends StatelessWidget {
  /// {@macro labeled_text_input}
  const AppLabeledTextInput({
    super.key,
    required this.labelText,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
    this.onChanged,
    this.onSubmitted,
    this.validator,
  });

  /// Texto que se muestra como etiqueta encima del campo de texto.
  final String labelText;
  ///Texto de sugerencia que se muestra dentro del campo de texto.
  final String? hintText;
  /// Controlador del texto del campo de texto.
  final TextEditingController? controller;
  ///Define el tipo de teclado a mostrar.
  final TextInputType? keyboardType;
  ///Define si el texto debe estar oculto (ej: para contraseñas).
  final bool obscureText;
  /// Icono a mostrar al final del input
  final Widget? suffixIcon;

  /// Metodo que se ejecuta cuando cambie el valor del cuadro de texto
  final ValueChanged<String>? onChanged;
  /// Metodo que se ejecuta cuando se envia el formulario
  final ValueChanged<String>? onSubmitted;

  final FormValidator<String> validator;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: labelText,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: Typo.fontLabelXS,
            ),
          ),
          const SizedBox(height: AppSizes.xs),
          AppTextInput(
            hintText: hintText,
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText,
            suffixIcon: suffixIcon,
            onChanged: onChanged,
            onSubmitted: onSubmitted,
            validator: validator,
          ),
        ],
      );
}
