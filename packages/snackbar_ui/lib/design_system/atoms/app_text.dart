import 'package:flutter/material.dart';

import '../foundations/app_colors.dart';
import '../foundations/typo.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
  });

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: style ??
            const TextStyle(
              fontSize: Typo.fontBodyMD,
              color: AppColors.onPrimaryLight,
              fontWeight: FontWeight.w500,
            ),
        textAlign: textAlign,
      );
}
