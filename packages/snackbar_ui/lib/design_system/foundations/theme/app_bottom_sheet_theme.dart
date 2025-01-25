import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/foundations/app_colors.dart';

class AppBottomSheetTheme {
  AppBottomSheetTheme._();

  //TODO: Verificar en cuanto BoxContraints si es necesario cambiar la propiedad
  //a una funcion y enviar el context, para que el alto sea responsive

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    elevation: 10,
    modalElevation: 16,
    clipBehavior: Clip.antiAlias,
    modalBarrierColor: AppColors.black54,
    showDragHandle: true,
    dragHandleColor: AppColors.disabled,
    backgroundColor: AppColors.surfaceLight,
    modalBackgroundColor: AppColors.surfaceLight,
    constraints: const BoxConstraints(minWidth: double.infinity, maxHeight: 500),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    elevation: 10,
    modalElevation: 16,
    clipBehavior: Clip.antiAlias,
    modalBarrierColor: AppColors.black54,
    showDragHandle: true,
    dragHandleColor: AppColors.disabled,
    backgroundColor: AppColors.surfaceDark,
    modalBackgroundColor: AppColors.surfaceDark,
    constraints: const BoxConstraints(minWidth: double.infinity, maxHeight: 500),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}
