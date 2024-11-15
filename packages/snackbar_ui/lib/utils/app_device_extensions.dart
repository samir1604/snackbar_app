import 'dart:async';

import 'package:flutter/material.dart';

extension AppDeviceExtensions on BuildContext {
  void hideKeyboard() => FocusScope.of(this).requestFocus(FocusNode());

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  double get getStatusBarHeight => MediaQuery.of(this).padding.top;

  double get getBottomNavigationBarHeight => kBottomNavigationBarHeight;

  double get getAppBarHeight => kToolbarHeight;

  double get getKeyboardHeight => MediaQuery.of(this).viewInsets.bottom;

  FutureOr<bool> get isKeyboardVisibleAsync async =>
      View.of(this).viewInsets.bottom > 0;

  bool get isKeyboardVisible => MediaQuery.of(this).viewInsets.bottom != 0;
}