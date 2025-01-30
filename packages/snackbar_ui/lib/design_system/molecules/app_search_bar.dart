import 'package:flutter/material.dart';

import '../atoms/app_icon.dart';
import '../atoms/app_text_input.dart';
import '../foundations/app_sizes.dart';

/// {@template app_search_bar}
/// Una molécula que representa una barra de búsqueda con un campo de texto y un icono de búsqueda.
/// {@endtemplate}
class AppSearchBar extends StatelessWidget {
  /// {@macro search_bar}
  const AppSearchBar({
    super.key,
    this.hintText,
    this.onChanged,
    this.onSubmitted,
    this.isDarkMode = false,
    this.inputStyle,
    this.focusNode,
    this.decoration,
    this.suffixIcon,
  });

  ///Texto de sugerencia a mostrar en el campo de texto.
  final String? hintText;

  ///Función que se ejecuta cuando cambia el texto del campo.
  final ValueChanged<String>? onChanged;

  ///Función que se ejecuta al enviar el formulario de búsqueda.
  final ValueChanged<String>? onSubmitted;

  ///Define si el input se encuentra en el modo oscuro
  final bool isDarkMode;

  /// Permite personalizar el estilo del texto del input
  final TextStyle? inputStyle;

  /// Permite manejar el foco del input
  final FocusNode? focusNode;

  ///Permite personalizar la decoracion del input
  final BoxDecoration? decoration;

  /// Permite personalizar el icono del input
  final AppIcon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.sm),
      child: Row(
        children: [
          Expanded(
            child: AppTextInput(
              hintText: hintText ?? 'Buscar...',
              suffixIcon: suffixIcon ??
                  AppIcon(
                    icon: Icons.search,
                    color: Theme.of(context).hintColor,
                  ),
              onChanged: onChanged,
              onSubmitted: onSubmitted,
              focusNode: focusNode,
              isDarkMode: isDarkMode,
            ),
          ),
        ],
      ),
    );
  }
}
