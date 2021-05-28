import 'package:flutter/material.dart';

import '../../../../../domain/entity/entities.dart';
import '../../../../widgets/widgets.dart';

class MorePointsPromotion extends StatelessWidget {
  const MorePointsPromotion(this.products, {Key? key}) : super(key: key);

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 21),
          child: Text(
            '3x mais pontos com itaú',
            style: TextStyle(
              color: Color(0xFF23232E),
              fontWeight: FontWeight.w700,
              fontSize: 21,
            ),
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 300,
          child: Row(
            children: [
              Expanded(
                child: VerticalProductCard(
                  products.elementAt(0),
                  freeShipping: false,
                  preLaunch: false,
                  morePoints: true,
                ),
              ),
              Expanded(
                child: VerticalProductCard(
                  products.elementAt(1),
                  freeShipping: false,
                  preLaunch: false,
                  morePoints: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
