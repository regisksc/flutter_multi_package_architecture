import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

enum CarouselIndicator { dots, snake }

class ICarrouselSlider extends StatefulWidget {
  const ICarrouselSlider({
    Key? key,
    required this.items,
    this.carouselIndicator,
  }) : super(key: key);

  final List<Widget> items;
  final CarouselIndicator? carouselIndicator;

  @override
  _ICarrouselSliderState createState() => _ICarrouselSliderState();
}

class _ICarrouselSliderState extends State<ICarrouselSlider> {
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
              ),
            ),
            child: CarouselSlider(
              options: CarouselOptions(
                onPageChanged: (i, _) => setState(() => index = i),
                viewportFraction: 1,
              ),
              items: widget.items,
            ),
          ),
        ),
        if (widget.carouselIndicator != null)
          Container(
            color: const Color(0xFFE5E5E5),
            child: Column(
              children: [
                const SizedBox(height: 8),
                if (widget.carouselIndicator == CarouselIndicator.dots)
                  DotsIndicator(
                    itemsLength: widget.items.length,
                    currentIndex: index + 1,
                  )
                else
                  SnakeIndicator(
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

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    Key? key,
    required this.itemsLength,
    required this.currentIndex,
  }) : super(key: key);

  final int itemsLength;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 1; i <= itemsLength; i++)
          AnimatedContainer(
            width: 8,
            height: 8,
            margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: currentIndex == i
                  ? const Color.fromRGBO(0, 0, 0, 0.9)
                  : const Color.fromRGBO(35, 35, 46, 0.2),
            ),
            duration: const Duration(milliseconds: 200),
          )
      ],
    );
  }
}

class SnakeIndicator extends StatelessWidget {
  const SnakeIndicator({
    Key? key,
    required this.itemsLength,
    required this.currentIndex,
  }) : super(key: key);

  final int itemsLength;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 1; i <= itemsLength; i++)
          AnimatedContainer(
            width: currentIndex == i ? 32 : 8,
            height: 8,
            margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(currentIndex == i ? 8 : 60),
              color: currentIndex == i
                  ? const Color.fromRGBO(0, 0, 0, 0.9)
                  : const Color.fromRGBO(35, 35, 46, 0.2),
            ),
            duration: const Duration(milliseconds: 200),
          )
      ],
    );
  }
}
