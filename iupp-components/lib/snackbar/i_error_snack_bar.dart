import 'package:flutter/material.dart';

import '../iupp_components.dart';

class IErrorSnackBar extends ISnackBar {
  IErrorSnackBar(
    BuildContext context, {
    required String message,
  }) : super(
          context,
          message: message,
          icon: IuppIcons.icone_contorno_A_aviso_outline,
          backgroundColor: const Color(0xFFDE1E12),
        );
}
