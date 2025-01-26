import 'package:flutter/material.dart';

class AppTextInput extends StatelessWidget {
  const AppTextInput({
    super.key,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
  });

  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) => TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
        ),
      );
}
