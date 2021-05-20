import 'package:flutter/material.dart';

import 'widgets.dart';

class ProductPriceInfo extends StatelessWidget {
  const ProductPriceInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'R\$ 7.499,00',
          style: TextStyle(
            color: Color(0xFF7C7B8B),
            fontSize: 14,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text.rich(
              TextSpan(
                text: 'R\$ ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                children: [
                  TextSpan(
                    text: '5.999,20 ',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: 'à vista',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            ProductDiscountChip(discount: 20),
          ],
        ),
        const Text(
          'ganhe 2.500 pontos',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF229552),
          ),
        ),
      ],
    );
  }
}
