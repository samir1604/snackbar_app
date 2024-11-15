import 'package:flutter/material.dart';

class AppCheckboxTheme {
  AppCheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    checkColor: WidgetStateColor.resolveWith((states) =>
        states.contains(WidgetState.selected) ? Colors.white : Colors.black),
    fillColor: WidgetStateColor.resolveWith((states) =>
        states.contains(WidgetState.selected)
            ? Colors.blue
            : Colors.transparent),
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    checkColor: WidgetStateColor.resolveWith((states) =>
    states.contains(WidgetState.selected) ? Colors.white : Colors.black),
    fillColor: WidgetStateColor.resolveWith((states) =>
    states.contains(WidgetState.selected)
        ? Colors.blue
        : Colors.transparent),
  );
}
