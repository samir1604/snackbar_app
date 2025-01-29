import 'package:flutter/material.dart';
import '../enums/button_type.dart';
import '../foundations/app_colors.dart';
import '../foundations/app_sizes.dart';
import '../foundations/app_styles.dart';
import 'app_text.dart';

/// {@template app_button}
/// Un átomo que representa un botón con diferentes estilos
/// (elevated, outlined, text) e iconos.
/// {@endtemplate}
class AppButton extends StatelessWidget {
  /// {@macro app_button}
  const AppButton({
    super.key,
    required this.text,
    this.type = ButtonType.elevated,
    this.onPressed,
    this.icon,
    this.isLoading = false,
    this.buttonColor,
    this.isDarkMode = false,
  });

  ///Texto a mostrar en el botón.
  final String text;

  ///Tipo de botón a mostrar.
  final ButtonType type;

  ///Función opcional que se ejecutará al presionar el botón.
  final VoidCallback? onPressed;

  ///Icono a mostrar a la izquierda del texto.
  final Widget? icon;

  /// Indica si el boton esta en estado de carga
  final bool isLoading;

  /// Define el color principal del boton
  final Color? buttonColor;

  ///Define el modo de la app
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) => switch (type) {
        ButtonType.elevated => ElevatedButton(
            onPressed: isLoading ? null : onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor ??  (isDarkMode ? AppColors.primaryDark : AppColors.primaryLight),
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.buttonPaddingHorizontal,
                  vertical: AppSizes.buttonPaddingVertical),
              elevation: AppSizes.buttonElevation,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.only(right: AppSizes.sm),
                    child: icon,
                  ),
                isLoading
                    ? SizedBox(
                        height: 15,
                        width: 15,
                        child: CircularProgressIndicator(
                          color: isDarkMode ? AppColors.onPrimaryDark : AppColors.onPrimaryLight,
                        ),
                      )
                    : AppText(text: text, style: AppStyles.bodyMd(isDarkMode: isDarkMode)),
              ],
            ),
          ),
        ButtonType.outlined => OutlinedButton(
            onPressed: isLoading ? null : onPressed,
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.buttonPaddingHorizontal,
                  vertical: AppSizes.buttonPaddingVertical),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.only(right: AppSizes.sm),
                    child: icon!,
                  ),
                isLoading
                    ? SizedBox(
                        height: 15,
                        width: 15,
                        child: CircularProgressIndicator(
                          color: AppColors.onPrimaryLight,
                        ),
                      )
                    :AppText(text: text, style: AppStyles.bodyMd(isDarkMode: isDarkMode)),
              ],
            ),
          ),
        ButtonType.text => TextButton(
            onPressed: isLoading ? null : onPressed,
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.buttonPaddingHorizontal,
                  vertical: AppSizes.buttonPaddingVertical),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.only(right: AppSizes.sm),
                    child: icon!,
                  ),
                isLoading
                    ? SizedBox(
                        height: 15,
                        width: 15,
                        child: CircularProgressIndicator(
                          color: AppColors.onPrimaryLight,
                        ),
                      )
                    : AppText(text: text, style: AppStyles.bodyMd(isDarkMode: isDarkMode)),
              ],
            ),
          ),
      };
}
