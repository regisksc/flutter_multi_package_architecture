import 'package:flutter/material.dart';

import '../../../../domain/entity/entities.dart';
import '../../../widgets/widgets.dart';

class IuppHighlightsProducts extends StatelessWidget {
  const IuppHighlightsProducts(
    this.products, {
    Key? key,
  }) : super(key: key);

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'destaques do iupp',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 26),
        SizedBox(
          height: 340,
          child: Row(
            children: [
              Expanded(
                child: VerticalProductCard(
                  products.elementAt(0),
                  freeShipping: true,
                  preLaunch: true,
                  morePoints: false,
                ),
              ),
              Expanded(
                child: VerticalProductCard(
                  products.elementAt(1),
                  freeShipping: false,
                  preLaunch: true,
                  morePoints: false,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
