import 'package:flutter/material.dart';

import '../foundations/app_colors.dart';
import '../foundations/app_sizes.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
    this.height,
    this.color,
    this.indent,
    this.endIndent,
    this.isDarkMode = false,
  });

  final double? height;
  final Color? color;
  final double? indent;
  final double? endIndent;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context)  =>
      Divider(
          height: height ?? AppSizes.dividerHeight,
          color: color ?? (isDarkMode ? AppColors.onSecondaryDark : AppColors.disabled),
          indent: indent,
          endIndent: endIndent
      );
}
