import 'package:flutter/material.dart';

import '../iupp_components.dart';

class ISuccessSnackBar extends ISnackBar {
  ISuccessSnackBar(
    BuildContext context, {
    required String message,
  }) : super(
          context,
          message: message,
          icon: IuppIcons.icone_contorno_C_check,
          backgroundColor: Color(0xFF1E8449),
        );
}
