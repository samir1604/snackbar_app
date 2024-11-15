import 'package:flutter/material.dart';

extension AppMessageExtensions on BuildContext {
  void showSnackBar(
      String message, {
        Color backgroundColor = Colors.grey,
        Duration duration = const Duration(milliseconds: 1000),
        double elevation = 5,
      }) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          backgroundColor: backgroundColor,
          duration: duration,
          elevation: elevation,
          content: Text(message.replaceAll('Exceptions:', '')),
        ),
      );

  void showAlert(String title, String message) => showDialog(
      context: this,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Ok'),
          )
        ],
      ));
}