import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IuppTextButton extends StatelessWidget {
  const IuppTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.buttonStyle,
    this.fontSize = 18,
    this.isLoading = false,
    this.textColor,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  final Color? textColor;
  final double fontSize;
  final bool isLoading;

  bool get isDisabled => onPressed == null;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: Theme.of(context).textButtonTheme.style ?? buttonStyle,
      child: isLoading
          ? SizedBox(
              width: 10,
              height: 10,
              child: CircularProgressIndicator.adaptive(
                valueColor: AlwaysStoppedAnimation<Color>(
                  textColor ?? Theme.of(context).backgroundColor,
                ),
                strokeWidth: 2,
              ),
            )
          : Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                color: !isDisabled ? textColor ?? Theme.of(context).backgroundColor : Theme.of(context).disabledColor,
              ),
            ),
    );
  }
}
