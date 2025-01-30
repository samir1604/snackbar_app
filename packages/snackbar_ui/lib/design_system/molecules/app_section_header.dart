import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/design_system.dart';

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
    this.isDarkMode = false,
    this.titleStyle,
    this.verticalPadding,
  });

  /// Texto a mostrar como título de la sección.
  final String title;

  /// Widget opcional a mostrar al final del encabezado, para realizar una acción.
  final Widget? action;

  ///Define si se esta usando el modo oscuro
  final bool isDarkMode;

  ///Permite personalizar el espacio vertical
  final double? verticalPadding;

  ///Permite personalizar el estilo del texto del titulo
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(vertical: verticalPadding ?? AppSizes.sm),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(
                text: title,
                style: titleStyle ?? AppStyles.titleH3(isDarkMode: isDarkMode)),
            if (action != null) action!,
          ],
        ),
      );
}
