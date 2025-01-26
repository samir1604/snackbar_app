import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/atoms/app_image_asset.dart';

import '../foundations/app_sizes.dart';

/// {@template image_carousel}
/// Una molécula que representa un carrusel de imágenes.
/// {@endtemplate}
class ImageCarousel extends StatelessWidget {
  /// {@macro image_carousel}
  const ImageCarousel({
    super.key,
    required this.imageAssets,
  });

  /// Lista de URLs de las imágenes a mostrar en el carrusel.
  final List<String> imageAssets;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.imageCarouselHeight,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imageAssets.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: AppSizes.sm),
              child: AppImageAsset(
                assetPath: imageAssets[index],
                width: AppSizes.imageCarouselHeight * 1.2,
                fit: BoxFit.cover,
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
              ),
            );
          }),
    );
  }
}
