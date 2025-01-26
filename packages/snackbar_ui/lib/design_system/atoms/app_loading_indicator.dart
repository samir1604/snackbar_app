import 'package:flutter/material.dart';

import '../enums/loading_indicator_type.dart';
import '../foundations/app_colors.dart';
import '../foundations/app_sizes.dart';

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({
    super.key,
    this.type = LoadingIndicatorType.circular,
    this.value,
    this.color,
    this.size,
  });

  final LoadingIndicatorType type;
  final double? value;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) => switch (type) {
        LoadingIndicatorType.circular => SizedBox(
            width: size ?? AppSizes.loadingIndicatorSize,
            height: size ?? AppSizes.loadingIndicatorSize,
            child: CircularProgressIndicator(
                value: value, color: color ?? AppColors.primaryLight)),
        LoadingIndicatorType.linear => LinearProgressIndicator(
            value: value, color: color ?? AppColors.primaryLight),
      };
}
