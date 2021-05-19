import 'package:flutter/material.dart';

import '../iupp_components.dart';

class IuppSuccessSnackBar extends IuppSnackBar {
  IuppSuccessSnackBar(
    BuildContext context, {
    required String message,
  }) : super(
          context,
          message: message,
          icon: IuppIcons.icone_contorno_C_check,
          backgroundColor: const Color(0xFF1E8449),
        );
}
