import 'package:flutter/material.dart';

class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({
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