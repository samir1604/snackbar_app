import 'package:flutter/material.dart';

class AppImageNetwork extends StatelessWidget {
  const AppImageNetwork(
      {super.key,
      required this.imageUrl,
      this.width,
      this.height,
      this.fit = BoxFit.cover,
      this.borderRadius});

  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context)  =>
      ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: Image.network(
          imageUrl,
          width: width,
          height: height,
          fit: fit,
        ),
      );
}
