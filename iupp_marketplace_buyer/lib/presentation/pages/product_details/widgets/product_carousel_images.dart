import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

class ProductCarouselImages extends StatelessWidget {
  const ProductCarouselImages(
    this.productImages, {
    Key? key,
  }) : super(key: key);

  final List<String> productImages;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: IuppCarrouselSlider(
        items: [
          IuppImageCached(imageUrl: productImages[0]),
          IuppImageCached(imageUrl: productImages[0]),
          IuppImageCached(imageUrl: productImages[0]),
          IuppImageCached(imageUrl: productImages[0]),
        ],
        carouselIndicator: CarouselIndicator.dots,
        carouselIndicatorContainerColor:
            Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
