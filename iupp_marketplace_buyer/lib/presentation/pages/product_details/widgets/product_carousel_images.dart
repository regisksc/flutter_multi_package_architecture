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
