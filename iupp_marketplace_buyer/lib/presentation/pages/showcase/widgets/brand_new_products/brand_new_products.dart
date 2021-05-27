import 'package:flutter/material.dart';

import '../../../../../domain/entity/entities.dart';
import '../../../../widgets/widgets.dart';

class BrandNewProducts extends StatelessWidget {
  const BrandNewProducts(
    this.products, {
    Key? key,
  }) : super(key: key);

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 21),
          child: Text(
            'acabou de chegar',
            style: TextStyle(
              color: Color(0xFF23232E),
              fontWeight: FontWeight.w700,
              fontSize: 21,
            ),
          ),
        ),
        const SizedBox(height: 24),
        HorizontalProductCard(products.first),
        SizedBox(
          height: 300,
          child: Row(
            children: [
              Expanded(
                child: VerticalProductCard(
                  title: products.elementAt(1).description,
                  imageUrl: products.elementAt(1).imageUrls.first,
                  freeShipping: false,
                  preLaunch: true,
                  morePoints: false,
                ),
              ),
              Expanded(
                child: VerticalProductCard(
                  title: products.elementAt(2).description,
                  imageUrl: products.elementAt(2).imageUrls.first,
                  freeShipping: true,
                  preLaunch: false,
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
