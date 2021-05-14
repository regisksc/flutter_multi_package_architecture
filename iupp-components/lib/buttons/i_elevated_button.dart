import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IElevatedButton extends StatelessWidget {
  const IElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.buttonStyle,
    this.textPadding,
    this.fontSize,
    this.fontWeight,
    this.isLoading = false,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  final EdgeInsets? textPadding;
  final double? fontSize;
  final FontWeight? fontWeight;
  final bool isLoading;

  bool get isDisabled => onPressed == null;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: isLoading
          ? SizedBox(
              width: 10,
              height: 10,
              child: CircularProgressIndicator.adaptive(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).primaryColor,
                ),
                strokeWidth: 2,
              ),
            )
          : Padding(
            padding: textPadding ?? const EdgeInsets.all(0),
            child: Text(
                text,
                style: TextStyle(
                  fontSize: fontSize ?? 12,
                  fontWeight: fontWeight,
                  color: !isDisabled
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).disabledColor,
                ),
              ),
          ),
      onPressed: onPressed,
      style: Theme.of(context).elevatedButtonTheme.style ?? buttonStyle,
    );
  }
}
