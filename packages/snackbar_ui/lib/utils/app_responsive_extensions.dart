import 'dart:math';

import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/foundations/app_responsive_size.dart';

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

  bool get isSmallMobile => width < AppResponsiveSize.smallMobile;

  bool get isMediumMobile => width >= AppResponsiveSize.smallMobile && width < AppResponsiveSize.mobile;

  bool get isMobile => width >= AppResponsiveSize.mobile && width < AppResponsiveSize.tablet;

  bool get isTable => width >= AppResponsiveSize.tablet && width < AppResponsiveSize.laptop;

  bool get isDesktop => width > AppResponsiveSize.laptop;

  bool get isLargeDesktop => width >= AppResponsiveSize.desktop;

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
        >= AppResponsiveSize.desktop => xl ?? lg ?? md ?? sm ?? defaultVal,
        >= AppResponsiveSize.laptop => lg ?? md ?? sm ?? defaultVal,
        >= AppResponsiveSize.tablet => md ?? sm ?? defaultVal,
        >= AppResponsiveSize.mobile => sm ?? defaultVal,
        >= AppResponsiveSize.smallMobile => xsm ?? defaultVal,
        _ => defaultVal
      };
}
