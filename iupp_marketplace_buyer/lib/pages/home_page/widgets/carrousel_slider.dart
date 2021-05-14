import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'carousel_indicator.dart';
import 'promotion_card.dart';

class CarrouselSlider extends StatefulWidget {
  CarrouselSlider({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<String> items;

  @override
  _CarrouselSliderState createState() => _CarrouselSliderState();
}

class _CarrouselSliderState extends State<CarrouselSlider> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            )),
            child: CarouselSlider(
              options: CarouselOptions(
                onPageChanged: (i, _) => setState(() => index = i),
                viewportFraction: 1,
              ),
              items: widget.items
                  .map((item) => PromotionCard(item: item))
                  .toList(),
            ),
          ),
        ),
        Container(
          color: const Color(0xFFE5E5E5),
          child: Column(
            children: [
              const SizedBox(height: 8),
              CarouselIndicator(
                itemsLength: widget.items.length,
                currentIndex: index + 1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
