import 'dart:math';

import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/foundations/app_screen_size.dart';

extension AppResponsiveExtensions on BuildContext {

  double get _blockSizeHorizontal => width /100;
  double get _blockSizeVertical => height /100;
  double get _safeAreaHorizontal => MediaQuery.of(this).padding.left + MediaQuery.of(this).padding.right;
  double get _safeAreaVertical => MediaQuery.of(this).padding.top + MediaQuery.of(this).padding.bottom;
  double get _safeBlockHorizontal => (width - _safeAreaHorizontal) /100;
  double get _safeBlockVertical => (height - _safeAreaVertical) /100;

  double blockSizeHorizontal(double percentage) => _blockSizeHorizontal * percentage;
  double blockSizeVertical(double percentage) => _blockSizeVertical * percentage;
  double safeBlockSizeHorizontal(double percentage) => _safeBlockHorizontal * percentage;
  double safeBlockSizeVertical(double percentage) => _safeBlockVertical * percentage;

  bool get isSmallMobile => width <= AppScreenSize.smallMobile;

  bool get isMobile => width > AppScreenSize.smallMobile && width <= AppScreenSize.mobile;

  bool get isTable => width > AppScreenSize.mobile && width <= AppScreenSize.tablet;

  bool get isLaptop => width > AppScreenSize.tablet && width <= AppScreenSize.laptop;

  bool get isDesktop => width > AppScreenSize.laptop;

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  double get diagonal => sqrt(pow(width, 2) + pow(height, 2));

  Size get size => MediaQuery.of(this).size;

  bool get isLandScapeOrientation => View.of(this).viewInsets.bottom == 0;

  bool get isPortraitOrientation => View.of(this).viewInsets.bottom != 0;

  double get getPixelRatio => MediaQuery.of(this).devicePixelRatio;

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
}
