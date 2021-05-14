import 'package:flutter/material.dart';

import '../iupp_components.dart';

class IWarningSnackBar extends ISnackBar {
  IWarningSnackBar(
    BuildContext context, {
    required String message,
  }) : super(
          context,
          message: message,
          icon: IuppIcons.icone_contorno_R_recarregar,
          backgroundColor: const Color(0xFFB95800),
        );
}
