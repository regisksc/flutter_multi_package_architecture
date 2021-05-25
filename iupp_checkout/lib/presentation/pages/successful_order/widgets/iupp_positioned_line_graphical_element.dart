import 'dart:math';

import 'package:flutter/material.dart';

import '../successful_order.dart';

class IuppPositionedLineGraphicalElement extends StatelessWidget {
  const IuppPositionedLineGraphicalElement(
      {Key? key,
      this.top,
      this.bottom,
      this.left,
      this.right,
      required this.angle,
      this.lenght,
      this.color = Colors.black,
      this.leadingColor})
      : assert(top != null || bottom != null || left != null || right != null,
            'At least one of the given constraints should be set: top, bottom, left, right'),
        assert(!((angle == null) ^ (lenght == null)),
            'The angle and the lenght are mutually related. You should provide or omit them both at the same time'),
        super(key: key);

  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final double? angle;
  final double? lenght;
  final Color? color;
  final Color? leadingColor;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Stack(
        children: [
          Positioned(
            top: top,
            left: left,
            child: Transform.rotate(
              origin: Offset(-lenght! / 2 + 5, 0),
              angle: angle! * pi / 180.0,
              child: Container(
                height: 10,
                width: lenght,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: color,
                ),
              ),
            ),
          ),
          IuppPositionedCircularGraphicalElement(
            top: top,
            bottom: bottom,
            left: left,
            right: right,
            color: leadingColor ?? color,
          ),
        ],
      ),
    );
  }
}
