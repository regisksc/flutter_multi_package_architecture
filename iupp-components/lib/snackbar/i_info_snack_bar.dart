import 'package:flutter/material.dart';

import '../iupp_components.dart';

class IInfoSnackBar extends ISnackBar {
  IInfoSnackBar(
    BuildContext context, {
    required String message,
  }) : super(
          context,
          message: message,
          icon: IuppIcons.icone_contorno_I_informacao_outline,
          backgroundColor: const Color(0xFF007DED),
        );
}
