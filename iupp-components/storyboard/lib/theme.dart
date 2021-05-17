import 'package:flutter/material.dart';

const primaryColor = Color(0xFF00EEE6);
const backgroundButtonColor = Color(0xFF23232E);
const disabledButtonColor = Color(0xFFE1E4EC);
const disabledButtonTextColor = Color(0xFFB1B5BF);

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
        const TextStyle(
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
          side: const BorderSide(
            color: backgroundButtonColor,
          ),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
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
        const TextStyle(
          color: backgroundButtonColor,
        ),
      ),
    ),
  ),
);
