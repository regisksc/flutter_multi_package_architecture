import 'package:flutter/material.dart';

import '../styles.dart';

abstract class IuppFonts {
  static const description = TextStyle(
    fontSize: 14,
    height: 1.2,
    fontFamily: 'Itau-Display',
    color: IuppColors.lead130,
    fontWeight: FontWeight.w400,
  );

  static final descriptionBold = description.copyWith(fontWeight: FontWeight.bold);

  static final highlightedDescription = descriptionBold.copyWith(
    color: IuppColors.green100,
  );

  static final link = descriptionBold.copyWith(color: IuppColors.blue110);
}
