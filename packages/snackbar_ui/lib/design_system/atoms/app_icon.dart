import 'package:flutter/material.dart';

import '../foundations/app_colors.dart';
import '../foundations/app_sizes.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    required this.icon,
    this.color,
    this.size,
  });

  final IconData icon;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context)  =>
      Icon(
        icon,
        color: color ?? AppColors.disabled,
        size: size ?? AppSizes.iconMd,
      );
}
