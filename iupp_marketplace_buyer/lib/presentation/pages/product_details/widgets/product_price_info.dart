import 'package:flutter/material.dart';
import 'package:iupp_core/core.dart';

import '../../../../domain/entity/entities.dart';
import 'widgets.dart';

class ProductPriceInfo extends StatelessWidget {
  const ProductPriceInfo(
    this.product, {
    Key? key,
  }) : super(key: key);

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          formatMonetaryValue(product.fakePrice),
          style: const TextStyle(
            color: Color(0xFF7C7B8B),
            fontSize: 14,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text.rich(
              TextSpan(
                text: 'R\$ ',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                children: [
                  TextSpan(
                    text: formatMonetaryValueWithoutSymbol(product.price),
                    style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                  ),
                  const TextSpan(
                    text: ' à vista',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            ProductDiscountChip(discount: product.discount),
          ],
        ),
        Text(
          'ganhe ${product.points} pontos',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF229552),
          ),
        ),
      ],
    );
  }
}
