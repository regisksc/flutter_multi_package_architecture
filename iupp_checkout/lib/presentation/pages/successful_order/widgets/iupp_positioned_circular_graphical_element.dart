import 'package:flutter/material.dart';

class IuppPositionedCircularGraphicalElement extends StatelessWidget {
  const IuppPositionedCircularGraphicalElement(
      {Key? key,
      this.top,
      this.bottom,
      this.left,
      this.right,
      this.color = Colors.black})
      : assert(top != null || bottom != null || left != null || right != null,
            'At least one of the given constraints should be set: top, bottom, left, right'),
        super(key: key);

  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      child: Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
      ),
    );
  }
}
