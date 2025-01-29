import 'package:flutter/material.dart';

class AppImageNetwork extends StatelessWidget {
  const AppImageNetwork({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.loadingWidget,
    this.errorWidget,
  });

  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;
  final Widget? loadingWidget;
  final Widget? errorWidget;

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: Image.network(imageUrl,
            width: width,
            height: height,
            fit: fit,
            loadingBuilder: (
              _,
              child,
              loadingProgress,
            ) {
              if (loadingProgress == null) return child;
              return loadingWidget ?? const CircularProgressIndicator();
            },
            errorBuilder: (_, __, ___) =>
                errorWidget ?? const Icon(Icons.error_outline)),
      );
}
