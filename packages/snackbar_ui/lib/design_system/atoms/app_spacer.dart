import 'package:flutter/material.dart';

import '../foundations/app_sizes.dart';

class AppSpacer extends StatelessWidget {
  const AppSpacer({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  const AppSpacer.xs({super.key})
      : width = AppSizes.xs,
        height = null;

  const AppSpacer.sm({super.key})
      : width = AppSizes.sm,
        height = null;

  const AppSpacer.md({super.key})
      : width = AppSizes.md,
        height = null;

  const AppSpacer.lg({super.key})
      : width = AppSizes.lg,
        height = null;

  const AppSpacer.xl({super.key})
      : width = AppSizes.xl,
        height = null;

  const AppSpacer.xsVertical({super.key})
      : width = null,
        height = AppSizes.xs;

  const AppSpacer.smVertical({super.key})
      : width = null,
        height = AppSizes.sm;

  const AppSpacer.mdVertical({super.key})
      : width = null,
        height = AppSizes.md;

  const AppSpacer.lgVertical({super.key})
      : width = null,
        height = AppSizes.lg;

  const AppSpacer.xlVertical({super.key})
      : width = null,
        height = AppSizes.xl;

  const AppSpacer.expanded({super.key})
      : width = null,
        height = null;

  @override
  Widget build(BuildContext context) => width == null && height == null
      ? const Expanded(child: SizedBox())
      : SizedBox(
          width: width,
          height: height,
        );
}
