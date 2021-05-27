import 'package:flutter/material.dart';

import '../styles.dart';

abstract class IuppFonts {
  static const description = TextStyle(
    fontSize: 14,
    fontFamily: 'Itau-Display',
    color: IuppColors.lead130,
    fontWeight: FontWeight.w400,
  );

  static const highlightedDescription = TextStyle(
    fontSize: 14,
    fontFamily: 'Itau-Display',
    color: IuppColors.green100,
    fontWeight: FontWeight.bold,
  );

  static const link = TextStyle(
    fontSize: 14,
    fontFamily: 'Itau-Display',
    color: IuppColors.blue110,
    fontWeight: FontWeight.bold,
  );
}
