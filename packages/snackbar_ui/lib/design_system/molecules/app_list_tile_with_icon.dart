import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/enums/icon_position.dart';

import '../atoms/atoms.dart';
import '../foundations/foundations.dart';

/// {@template app_list_tile_with_icon}
/// Una molécula que combina un ícono con un título, texto secundario y una acción al final.
/// {@endtemplate}
class AppListTileWithIcon extends StatelessWidget {
  /// {@macro list_tile_with_icon}
  const AppListTileWithIcon({
    super.key,
    this.icon,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.isDarkMode = false,
    this.titleStyle,
    this.subtitleStyle,
    this.iconPosition = IconPosition.left,
  });

  /// Icono a mostrar al inicio del elemento.
  final IconData? icon;

  /// Texto principal a mostrar como título del elemento.
  final String title;

  /// Texto secundario opcional a mostrar debajo del título.
  final String? subtitle;

  /// Widget opcional a mostrar al final del elemento.
  final Widget? trailing;

  /// Funcion opcional que se ejecutará al presionar el elemento.
  final VoidCallback? onTap;

  ///Define el modo de la app
  final bool isDarkMode;

  ///Define la posicion del Icono
  final IconPosition iconPosition;

  ///Define el estilo del texto del titulo
  final TextStyle? titleStyle;

  ///Define el estilo del texto del subtitulo
  final TextStyle? subtitleStyle;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.sm),
          child: Row(
            children: [
              if (icon != null && iconPosition == IconPosition.left)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppIcon(icon: icon!),
                    const SizedBox(width: AppSizes.md),
                  ],
                ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                        text: title,
                        style: titleStyle ??
                            AppStyles.bodySM(isDarkMode: isDarkMode)),
                    if (subtitle != null)
                      AppText(
                          text: subtitle!,
                          style: subtitleStyle ??
                              AppStyles.bodySM(isDarkMode: isDarkMode)),
                  ],
                ),
              ),
              if (trailing != null) trailing!,
              if (icon != null && iconPosition == IconPosition.right)
                Row(
                  children: [
                    const SizedBox(width: AppSizes.md),
                    AppIcon(icon: icon!),
                  ],
                )
            ],
          ),
        ),
      );
}
