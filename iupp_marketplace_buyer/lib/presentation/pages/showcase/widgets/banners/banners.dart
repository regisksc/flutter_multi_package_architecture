import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

import '../../../../../domain/entity/entities.dart';
import '../widgets.dart';

class Banners extends StatelessWidget {
  const Banners(
    this.banners, {
    Key? key,
  }) : super(key: key);

  final List<BannerEntity> banners;

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
              items: banners
                  .map((banner) => PromotionCard(item: banner.bannerUrl))
                  .toList(),
              carouselIndicator: CarouselIndicator.snake,
            ),
          ),
        ),
      ],
    );
  }
}
