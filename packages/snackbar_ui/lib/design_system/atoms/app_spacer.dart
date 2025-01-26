import 'package:flutter/material.dart';

class AppSpacer extends StatelessWidget {
  const AppSpacer({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: width,
        height: height,
      );
}
