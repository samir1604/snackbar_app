import 'package:flutter/material.dart';

import '../foundations/app_styles.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.isDarkMode = false,
  });

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: style ?? AppStyles.bodyMd(isDarkMode: isDarkMode),
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
      );
}
