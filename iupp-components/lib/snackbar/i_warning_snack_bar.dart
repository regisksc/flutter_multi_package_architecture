import 'package:flutter/material.dart';

import '../iupp_components.dart';

class IWarningSnackBar extends ISnackBar {
  IWarningSnackBar(
    BuildContext context, {
    required String message,
  }) : super(
          context,
          message: message,
          icon: IuppIcons.iconeContornoRRecarregar,
          backgroundColor: const Color(0xFFB95800),
        );
}
