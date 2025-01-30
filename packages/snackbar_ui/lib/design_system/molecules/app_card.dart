import 'package:flutter/material.dart';

import '../enums/shadow_type.dart';
import '../foundations/app_colors.dart';
import '../foundations/app_sizes.dart';

/// {@template app_card}
/// Una tarjeta genérica y reutilizable que puede usarse para mostrar diferentes
/// tipos de contenido en una interfaz de usuario.
///
/// Permite definir un encabezado, un cuerpo principal y un pie de página de forma
/// flexible.
/// {@endtemplate}
class AppCard extends StatelessWidget {
  /// {@macro app_card}
  const AppCard({
    super.key,
    this.header,
    required this.body,
    this.footer,
    this.onTap,
    this.backgroundColor,
    this.shadowColor,
    this.borderRadius,
    this.boxShadow,
    this.elevation,
    this.shadowType,
    this.isDarkMode = false,
  });

  ///Widget opcional que se muestra en la parte superior de la tarjeta (ej: un título o imagen).
  final Widget? header;

  /// Widget obligatorio que se muestra en la parte principal de la tarjeta (ej: texto, formulario).
  final Widget body;

  /// Widget opcional que se muestra en la parte inferior de la tarjeta (ej: un botón o un texto).
  final Widget? footer;

  /// Función opcional que se ejecuta al hacer clic en la tarjeta.
  final VoidCallback? onTap;

  /// Permite configurar el color de fondo del contenedor
  final Color? backgroundColor;

  ///Permite personalizar el color de la sombra
  final Color? shadowColor;

  ///Permite configurar el borderRadius de la tarjeta
  final BorderRadius? borderRadius;

  ///Permite configurar el boxShadow de la tarjeta
  final BoxShadow? boxShadow;

  ///Permite configurar la elevación de la tarjeta
  final double? elevation;

  ///Define el tipo de sombra a utilizar
  final ShadowType? shadowType;

  ///Define si se esta usando el modo oscuro
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(AppSizes.md),
          decoration: BoxDecoration(
            color: backgroundColor ?? Theme.of(context).cardColor,
            borderRadius: borderRadius ?? BorderRadius.circular(AppSizes.cardRadiusLg),
            boxShadow: shadowType == ShadowType.boxShadow ? [
              boxShadow ??
                  BoxShadow(
                      color: shadowColor?.withOpacity(.2) ??
                          (isDarkMode ? AppColors.white12 : Colors.grey.withOpacity(.2)),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(0, 2))
            ] : null,
          ),
          child: Material(
            color: Colors.transparent,
            elevation: elevation ?? 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (header != null)
                  Padding(
                      padding: const EdgeInsets.only(bottom: AppSizes.sm),
                      child: header),
                body,
                if (footer != null)
                  Padding(
                      padding: const EdgeInsets.only(bottom: AppSizes.sm),
                      child: footer)
              ],
            ),
          ),
        ),
      );
}
