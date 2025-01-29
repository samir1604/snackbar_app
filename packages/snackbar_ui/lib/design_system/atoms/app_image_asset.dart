import 'package:flutter/material.dart';

class AppImageAsset extends StatelessWidget {
  const AppImageAsset({
    super.key,
    required this.assetPath,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.errorWidget,
  });

  final String assetPath;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;
  final Widget? errorWidget;

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: Image.asset(assetPath,
            width: width,
            height: height,
            fit: fit,
            errorBuilder: (_, __, ___) =>
                errorWidget ?? const Icon(Icons.error_outline)),
      );
}
