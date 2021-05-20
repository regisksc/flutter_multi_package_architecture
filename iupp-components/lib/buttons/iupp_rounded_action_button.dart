import 'package:flutter/material.dart';

class IuppRoundedActionButton extends StatelessWidget {
  const IuppRoundedActionButton({
    Key? key,
    required this.child,
    required this.onTap,
    this.heigth = 42,
    this.width = 42,
    this.borderRadius = 50,
    this.borderWidth = 1,
    this.borderColor = Colors.black,
    this.backgroundColor = Colors.transparent,
  }) : super(key: key);

  final VoidCallback onTap;
  final Widget child;
  final double width;
  final double heigth;
  final double borderRadius;
  final double borderWidth;
  final Color borderColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: heigth,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: borderWidth > 0 ? Border.fromBorderSide(
            BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
          ) : null ,
        ),
        child: child,
      ),
    );
  }
}
