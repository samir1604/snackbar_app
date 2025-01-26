import 'package:flutter/material.dart';

import '../atoms/app_icon.dart';
import '../atoms/app_text.dart';
import '../foundations/app_sizes.dart';

/// {@template app_list_tile_with_icon}
/// Una molécula que combina un ícono con un título, texto secundario y una acción al final.
/// {@endtemplate}
class AppListTileWithIcon extends StatelessWidget {
  /// {@macro list_tile_with_icon}
  const AppListTileWithIcon({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
  });

  /// Icono a mostrar al inicio del elemento.
  final IconData icon;

  /// Texto principal a mostrar como título del elemento.
  final String title;

  /// Texto secundario opcional a mostrar debajo del título.
  final String? subtitle;

  /// Widget opcional a mostrar al final del elemento.
  final Widget? trailing;

  /// Funcion opcional que se ejecutará al presionar el elemento.
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) =>
      InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.sm),
          child: Row(
            children: [
              AppIcon(icon: icon),
              const SizedBox(width: AppSizes.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: AppSizes.fontSizeMd
                      ),
                    ),
                    if (subtitle != null)
                      AppText(
                        text: subtitle!,
                        style: const TextStyle(
                            fontSize: AppSizes.fontSizeSm
                        ),
                      ),
                  ],
                ),
              ),
              if (trailing != null)
                trailing!,
            ],
          ),
        ),
      );
}
