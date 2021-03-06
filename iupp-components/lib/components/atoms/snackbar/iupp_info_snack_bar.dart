import 'package:flutter/material.dart';
import '../../components.dart';

class IuppInfoSnackBar extends IuppSnackBar {
  IuppInfoSnackBar(
    BuildContext context, {
    required String message,
  }) : super(
          context,
          message: message,
          icon: IuppIcons.icone_contorno_I_informacao_outline,
          backgroundColor: const Color(0xFF007DED),
        );
}
