import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iupp_checkout/presentation/pages/successful_order/widgets/iupp_positioned_circular_graphical_element.dart';
import 'package:iupp_checkout/presentation/pages/successful_order/widgets/iupp_positioned_line_graphical_element.dart';

class SuccessfulOrderHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: 324,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              child: Stack(
                children: [
                  TweenAnimationBuilder(
                    curve: Curves.bounceOut,
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: const Duration(seconds: 2),
                    builder: (context, double value, child) {
                      return IuppPositionedLineGraphicalElement(
                        top: 50,
                        left: 20,
                        lenght: 50,
                        angle: value * 360.0,
                        color: Color(0xFFEC7000),
                        leadingColor: Colors.black,
                      );
                    },
                  ),
                  IuppPositionedLineGraphicalElement(
                    top: 94,
                    left: 54,
                    lenght: 106,
                    angle: 320,
                    color: Color(0xFFEC7000),
                    leadingColor: Colors.black,
                  ),
                  IuppPositionedCircularGraphicalElement(
                    top: 61,
                    left: 163,
                    color: Colors.white,
                  ),
                  IuppPositionedCircularGraphicalElement(
                    top: 97,
                    left: 235,
                    color: Color(0xFF23232E),
                  ),
                  IuppPositionedCircularGraphicalElement(
                    top: 61,
                    left: 307,
                    color: Color(0xFFEC7000),
                  ),
                ],
              ),
            ),
            const Text(
              'iupp, iupp,\nurra! seu pedido\nfoi concluído com\nsucesso',
              style: TextStyle(
                color: Color(0xFF23232E),
                fontSize: 36,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
