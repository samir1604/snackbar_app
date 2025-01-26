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
  });

  ///Texto de sugerencia a mostrar en el campo de texto.
  final String? hintText;

  ///Función que se ejecuta cuando cambia el texto del campo.
  final ValueChanged<String>? onChanged;

  ///Función que se ejecuta al enviar el formulario de búsqueda.
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.sm),
      child: Row(
        children: [
          Expanded(
            child: AppTextInput(
              hintText: hintText ?? 'Buscar...',
              suffixIcon: AppIcon(
                icon: Icons.search,
                color: Theme.of(context).hintColor,
              ),
              onChanged: onChanged,
              onSubmitted: onSubmitted,
            ),
          ),
        ],
      ),
    );
  }
}
