import 'package:flutter/material.dart';

import '../../type_def/type_definition.dart';
import '../foundations/app_input_decoration.dart';
import '../foundations/app_styles.dart';

class AppTextInput extends StatelessWidget {
  const AppTextInput({
    super.key,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.labelText,
    this.focusNode,
    this.isDarkMode = false,
  });

  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FormValidator<String>? validator;
  final String? labelText;
  final FocusNode? focusNode;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        focusNode: focusNode,
        style: AppStyles.bodyMd(isDarkMode: isDarkMode),
        decoration: AppInputDecoration.style(
          hintText: hintText,
          suffixIcon: suffixIcon,
          labelText: labelText,
          isDarkMode: isDarkMode,
        ),
        validator: validator,
        onChanged: onChanged,
        onFieldSubmitted: onSubmitted,
      );
}
