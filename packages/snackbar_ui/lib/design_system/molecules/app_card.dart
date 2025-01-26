import 'package:flutter/material.dart';

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
  });

  ///Widget opcional que se muestra en la parte superior de la tarjeta (ej: un título o imagen).
  final Widget? header;
  /// Widget obligatorio que se muestra en la parte principal de la tarjeta (ej: texto, formulario).
  final Widget body;
  /// Widget opcional que se muestra en la parte inferior de la tarjeta (ej: un botón o un texto).
  final Widget? footer;
  /// Función opcional que se ejecuta al hacer clic en la tarjeta.
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(AppSizes.md),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.2),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, 2))
            ],
          ),
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
      );
}
