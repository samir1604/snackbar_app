import 'package:flutter/material.dart';

class AppUtilities {
  AppUtilities._();

  static List<T> removeDuplicates<T>(List<T> items) => items.toSet().toList();

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }

    return wrappedList;
  }
}
