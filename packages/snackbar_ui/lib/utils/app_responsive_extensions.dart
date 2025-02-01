import 'dart:math';

import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/foundations/app_screen_size.dart';

/// Extension de [BuildContext] para facilitar la creacion de interfaces de usuario responsivas.
extension AppResponsiveExtensions on BuildContext {
  MediaQueryData get _mediaQuery => MediaQuery.of(this);

  /// Devuelve el ancho de la pantalla en píxeles.
  double get width => _mediaQuery.size.width;

  /// Devuelve la altura de la pantalla en píxeles.
  double get height => _mediaQuery.size.height;

  /// Devuelve la diagonal de la pantalla en píxeles.
  double get diagonal => sqrt(pow(width, 2) + pow(height, 2));

  /// Devuelve el tamaño de la pantalla como una instancia de `Size`.
  Size get size => _mediaQuery.size;

  /// Calcula el tamaño de un bloque horizontal de la pantalla.
  /// Divide el ancho de la pantalla por 100.
  double get _blockSizeHorizontal => width / 100;

  /// Calcula el tamaño de un bloque vertical de la pantalla.
  /// Divide la altura de la pantalla por 100.
  double get _blockSizeVertical => height / 100;

  /// Suma los padding horizontales de la pantalla (izquierda y derecha).
  double get _safeAreaHorizontal =>
      _mediaQuery.padding.left + _mediaQuery.padding.right;

  /// Suma los padding verticales de la pantalla (arriba y abajo).
  double get _safeAreaVertical =>
      _mediaQuery.padding.top + _mediaQuery.padding.bottom;

  /// Calcula el tamaño de un bloque horizontal en el area segura de la pantalla.
  /// Divide el ancho del area segura por 100.
  double get _safeBlockHorizontal => (width - _safeAreaHorizontal) / 100;

  /// Calcula el tamaño de un bloque vertical en el area segura de la pantalla.
  /// Divide la altura del area segura por 100.
  double get _safeBlockVertical => (height - _safeAreaVertical) / 100;

  /// Calcula el tamaño horizontal para un porcentaje dado de la pantalla.
  /// [percentage] Porcentaje del ancho de la pantalla a calcular
  double blockSizeHorizontal(double percentage) =>
      _blockSizeHorizontal * percentage;

  /// Calcula el tamaño vertical para un porcentaje dado de la pantalla.
  /// [percentage] Porcentaje de la altura de la pantalla a calcular.
  double blockSizeVertical(double percentage) =>
      _blockSizeVertical * percentage;

  /// Calcula el tamaño horizontal para un porcentaje dado en el area segura de la pantalla.
  /// [percentage] Porcentaje del ancho del area segura de la pantalla a calcular.
  double safeBlockSizeHorizontal(double percentage) =>
      _safeBlockHorizontal * percentage;

  /// Calcula el tamaño vertical para un porcentaje dado en el area segura de la pantalla.
  /// [percentage] Porcentaje de la altura del area segura de la pantalla a calcular.
  double safeBlockSizeVertical(double percentage) =>
      _safeBlockVertical * percentage;

  /// Determina si la pantalla tiene un ancho menor o igual a la definición de tamaño para dispositivos muy pequeños.
  bool get isSmallMobile => width <= AppScreenSize.smallMobile;

  /// Determina si la pantalla tiene un ancho entre las definiciones de tamaño para dispositivos muy pequeños y dispositivos móviles.
  bool get isMobile =>
      width > AppScreenSize.smallMobile && width <= AppScreenSize.mobile;

  /// Determina si la pantalla tiene un ancho entre las definiciones de tamaño para dispositivos móviles y tabletas pequeñas.
  bool get isTable =>
      width > AppScreenSize.mobile && width <= AppScreenSize.tablet;

  /// Determina si la pantalla tiene un ancho entre las definiciones de tamaño para tabletas y laptops.
  bool get isLaptop =>
      width > AppScreenSize.tablet && width <= AppScreenSize.laptop;

  /// Determina si la pantalla tiene un ancho mayor a la definición de tamaño para laptops.
  bool get isDesktop => width > AppScreenSize.laptop;

  /// Determina si la orientación de la pantalla es horizontal.
  bool get isLandScapeOrientation =>
      _mediaQuery.orientation == Orientation.landscape;

  /// Determina si la orientación de la pantalla es vertical.
  bool get isPortraitOrientation =>
      _mediaQuery.orientation == Orientation.portrait;

  /// Devuelve el factor de escala de píxeles del dispositivo.
  double get getPixelRatio => MediaQuery.of(this).devicePixelRatio;

  /// Retorna un valor de tipo genérico [T]  dependiendo del ancho de la pantalla.
  ///
  /// * [defaultVal] Valor por defecto a devolver en caso de que no se especifique un valor para el tamaño actual.
  ///
  /// * [xsm] Valor a devolver en caso de que la pantalla sea muy pequeña.
  ///
  /// * [sm] Valor a devolver en caso de que la pantalla sea pequeña.
  ///
  /// * [md] Valor a devolver en caso de que la pantalla sea mediana.
  ///
  /// * [lg] Valor a devolver en caso de que la pantalla sea grande.
  ///
  /// * [xl] Valor a devolver en caso de que la pantalla sea extra grande.
  /*
  T responsive<T>(
    T defaultVal, {
    T? xsm,
    T? sm,
    T? md,
    T? lg,
    T? xl,
  }) =>
      switch (width) {
        >= AppScreenSize.laptop => xl ?? lg ?? md ?? sm ?? defaultVal,
        >= AppScreenSize.tablet => lg ?? md ?? sm ?? defaultVal,
        >= AppScreenSize.smallTablet => md ?? sm ?? defaultVal,
        >= AppScreenSize.mobile => sm ?? defaultVal,
        >= AppScreenSize.smallMobile => xsm ?? defaultVal,
        _ => defaultVal
      };

   */

  T responsive<T>(T defaultVal, [Map<double, T>? breakpoints]) {
    return breakpoints?.entries
            .firstWhere((entry) => width >= entry.key,
                orElse: () => MapEntry(0, defaultVal))
            .value ??
        defaultVal;
  }
}
