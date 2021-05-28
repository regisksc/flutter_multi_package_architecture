import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

import '../../../../domain/entity/entities.dart';

class ProductCarouselImages extends StatelessWidget {
  const ProductCarouselImages(
    this.product, {
    Key? key,
  }) : super(key: key);

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    final productImages = product.imageUrls;
    return SizedBox(
      height: 260,
      child: IuppCarrouselSlider(
        items: [
          Hero(
            tag: product.id,
            child: IuppImageCached(
              imageUrl: productImages[0],
            ),
          ),
          ...product.imageUrls
              .getRange(1, product.imageUrls.length)
              .map((image) => IuppImageCached(imageUrl: image))
              .toList()
        ],
        carouselIndicator: CarouselIndicator.dots,
        carouselIndicatorContainerColor:
            Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
