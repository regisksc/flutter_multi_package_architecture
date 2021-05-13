import 'package:flutter/material.dart';

final primaryColor = Color(0xFF00EEE6);
final backgroundButtonColor = Color(0xFF23232E);
final disabledButtonColor = Color(0xFFE1E4EC);
final disabledButtonTextColor = Color(0xFFB1B5BF);

final theme = ThemeData(
  primaryColor: primaryColor,
  backgroundColor: backgroundButtonColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return disabledButtonColor;
        }
        return backgroundButtonColor;
      }),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        TextStyle(
          color: primaryColor,
        ),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(
            color: backgroundButtonColor,
            style: BorderStyle.solid,
          ),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        TextStyle(
          color: primaryColor,
        ),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        TextStyle(
          color: backgroundButtonColor,
        ),
      ),
    ),
  ),
);
