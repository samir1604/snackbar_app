import 'package:flutter/material.dart';

import '../atoms/app_text.dart';
import '../foundations/app_colors.dart';
import '../foundations/app_sizes.dart';

/// {@template badge}
/// Una molécula que representa una insignia con un texto y una forma específica.
/// {@endtemplate}
class Badge extends StatelessWidget {
  /// {@macro badge}
  const Badge({
    super.key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.padding,
    this.borderRadius,
  });

  /// Texto a mostrar en la insignia.
  final String text;

  /// Color de fondo de la insignia.
  final Color? backgroundColor;

  /// Color del texto de la insignia.
  final Color? textColor;

  /// Padding del contenido de la insignia.
  final EdgeInsetsGeometry? padding;

  ///Radio de borde de la insignia.
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          const EdgeInsets.symmetric(
              horizontal: AppSizes.sm, vertical: AppSizes.xs),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.primaryLight,
        borderRadius:
            borderRadius ?? BorderRadius.circular(AppSizes.borderRadiusSm),
      ),
      child: AppText(
          text: text,
          style: TextStyle(
            color: textColor ?? AppColors.backgroundLight,
            fontSize: AppSizes.fontSizeSm,
            fontWeight: FontWeight.w500,
          )),
    );
  }
}
