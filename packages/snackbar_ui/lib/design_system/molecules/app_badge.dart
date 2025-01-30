import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/enums/icon_position.dart';

import '../atoms/app_icon.dart';
import '../atoms/app_text.dart';
import '../foundations/app_colors.dart';
import '../foundations/app_sizes.dart';
import '../foundations/app_styles.dart';

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
    this.shape,
    this.style,
    this.iconPosition,
    this.icon,
    this.isDarkMode = false,
  });

  /// Texto a mostrar en la insignia.
  final String text;

  /// Color de fondo de la insignia.
  final Color? backgroundColor;

  /// Color del texto de la insignia.
  final Color? textColor;

  /// Padding del contenido de la insignia.
  final EdgeInsetsGeometry? padding;

  /// Radio de borde de la insignia.
  final BorderRadius? borderRadius;

  /// Forma de badge
  final BoxShape? shape;

  /// Estilo del texto
  final TextStyle? style;

  /// Posicion del icono
  final IconPosition? iconPosition;

  /// Icono
  final AppIcon? icon;

  ///Indica si se esta usando el modo oscuro
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          const EdgeInsets.symmetric(
              horizontal: AppSizes.sm, vertical: AppSizes.xs),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (isDarkMode ? AppColors.backgroundDark : AppColors.backgroundLight),
        borderRadius:
            borderRadius ?? BorderRadius.circular(AppSizes.borderRadiusSm),
        shape: shape ?? BoxShape.rectangle,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null && iconPosition == IconPosition.left)
            Padding(padding: EdgeInsets.only(right: AppSizes.xs), child: icon),
          AppText(
              text: text,
              style: style ??
                  AppStyles.bodySM(
                      textColor: textColor, isDarkMode: isDarkMode)),
          if (icon != null && iconPosition == IconPosition.right)
            Padding(padding: EdgeInsets.only(left: AppSizes.xs), child: icon),
        ],
      ),
    );
  }
}
