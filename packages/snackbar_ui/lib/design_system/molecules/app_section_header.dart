import 'package:flutter/material.dart';

import '../atoms/app_text.dart';
import '../foundations/app_sizes.dart';

/// {@template app_section_header}
/// Una molécula que representa un encabezado de sección con un título y una acción opcional.
/// {@endtemplate}
class AppSectionHeader extends StatelessWidget {
  /// {@macro section_header}
  const AppSectionHeader({
    super.key,
    required this.title,
    this.action,
  });

  /// Texto a mostrar como título de la sección.
  final String title;

  /// Widget opcional a mostrar al final del encabezado, para realizar una acción.
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            text: title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: AppSizes.fontSizeLg,
            ),
          ),
          if (action != null)
            action!,
        ],
      ),
    );
  }
}