import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/atoms/app_image_asset.dart';

import '../foundations/app_sizes.dart';

/// {@template image_carousel}
/// Una molécula que representa un carrusel de imágenes.
/// {@endtemplate}
class ImageCarousel extends StatefulWidget {
  /// {@macro image_carousel}
  const ImageCarousel(
      {super.key,
      required this.imageAssets,
      this.height,
      this.isDarkMode = false,
      this.showIndicators = true});

  /// Lista de URLs de las imágenes a mostrar en el carrusel.
  final List<String> imageAssets;

  /// Permite definir una altura del carrusel
  final double? height;

  /// Permite definir el modo de la app
  final bool isDarkMode;

  ///Permite definir si se muestran o no los indicadores
  final bool showIndicators;

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToNextPage() {
    if (_currentPage < widget.imageAssets.length - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  void _goToPreviousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.height ?? AppSizes.imageCarouselHeight,
          child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: widget.imageAssets.length,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: AppSizes.sm),
                    child: AppImageAsset(
                      assetPath: widget.imageAssets[index],
                      width:
                          (widget.height ?? AppSizes.imageCarouselHeight) * 1.2,
                      fit: BoxFit.cover,
                      borderRadius:
                          BorderRadius.circular(AppSizes.borderRadiusMd),
                    ),
                  )),
        ),
        if (widget.showIndicators)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                widget.imageAssets.length,
                (index) => Container(
                      margin: const EdgeInsets.all(AppSizes.xs),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPage == index
                              ? Colors.black
                              : Colors.grey),
                    )),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: _goToPreviousPage,
                icon: const Icon(Icons.arrow_back_ios)),
            IconButton(
                onPressed: _goToNextPage,
                icon: const Icon(Icons.arrow_forward_ios)),
          ],
        )
      ],
    );
  }
}
