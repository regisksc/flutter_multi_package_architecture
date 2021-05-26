import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

import '../widgets.dart';

final items = [
  const PromotionCard(item: 'oferta1.png'),
  const PromotionCard(item: 'oferta1.png'),
  const PromotionCard(item: 'oferta1.png'),
];

class Banners extends StatelessWidget {
  const Banners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          height: 104,
          decoration: const BoxDecoration(
            color: Color(0xFF23232E),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
        ),
        Positioned(
          top: 18,
          left: 8,
          right: 8,
          child: SizedBox(
            height: 170,
            child: IuppCarrouselSlider(
              items: items,
              carouselIndicator: CarouselIndicator.snake,
            ),
          ),
        ),
      ],
    );
  }
}
