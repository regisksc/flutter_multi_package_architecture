import 'package:flutter/material.dart';

class IuppRoundedActionButton extends StatelessWidget {
  const IuppRoundedActionButton({
    Key? key,
    required this.child,
    required this.onTap,
    this.heigth = 42,
    this.width = 42,
    this.borderRadius = 50,
    this.borderColor = Colors.black,
  }) : super(key: key);

  final VoidCallback onTap;
  final Widget child;
  final double width;
  final double heigth;
  final double borderRadius;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: heigth,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.fromBorderSide(
            BorderSide(
              color: borderColor,
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
