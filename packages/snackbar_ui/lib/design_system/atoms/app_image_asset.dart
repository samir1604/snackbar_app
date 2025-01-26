import 'package:flutter/material.dart';

class AppImageAsset extends StatelessWidget {
  const AppImageAsset({
    super.key,
    required this.assetPath,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
  });

  final String assetPath;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: Image.asset(
          assetPath,
          width: width,
          height: height,
          fit: fit,
        ),
      );
}
