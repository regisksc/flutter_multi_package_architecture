import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ITextButton extends StatelessWidget {
  const ITextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.buttonStyle,
    this.isLoading = false,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  final bool isLoading;

  bool get isDisabled => onPressed == null;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: isLoading
          ? SizedBox(
              width: 10,
              height: 10,
              child: CircularProgressIndicator.adaptive(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).backgroundColor,
                ),
                strokeWidth: 2,
              ),
            )
          : Text(
              text,
              style: TextStyle(
                fontSize: 12,
                color: !isDisabled
                    ? Theme.of(context).backgroundColor
                    : Theme.of(context).disabledColor,
              ),
            ),
      onPressed: onPressed,
      style: Theme.of(context).textButtonTheme.style ?? buttonStyle,
    );
  }
}
