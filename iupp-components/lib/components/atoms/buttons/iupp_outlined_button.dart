import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IuppOutlinedButton extends StatelessWidget {
  const IuppOutlinedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.buttonStyle,
    this.textPadding = const EdgeInsets.all(13),
    this.fontSize = 18,
    this.fontWeight = FontWeight.w700,
    this.borderRadius = 50,
    this.isLoading = false,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  final EdgeInsets textPadding;
  final double fontSize;
  final FontWeight fontWeight;
  final double borderRadius;
  final bool isLoading;

  bool get isDisabled => onPressed == null;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
          side: BorderSide(
            color: isDisabled ? Theme.of(context).disabledColor : Colors.black,
            width: 2,
          ),
        ),
        side: BorderSide(
          color: isDisabled ? Theme.of(context).disabledColor : Colors.black,
          width: 2,
        ),
      ),
      child: isLoading
          ? const SizedBox(
              width: 10,
              height: 10,
              child: CircularProgressIndicator.adaptive(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color(0xFF181820),
                ),
                strokeWidth: 2,
              ),
            )
          : Padding(
              padding: textPadding,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: !isDisabled
                      ? Theme.of(context).backgroundColor
                      : Theme.of(context).disabledColor,
                ),
              ),
            ),
    );
  }
}
