import 'package:flutter/material.dart';
import 'package:iupp_components/components/utils/platform_utils.dart';
import '../../components.dart';

class IuppSnackBar extends SnackBar {
  IuppSnackBar(
    BuildContext context, {
    required String message,
    required IconData icon,
    required Color backgroundColor,
  }) : super(
          content: Row(
            children: [
              if (isIos(Theme.of(context).platform)) ...[
                Icon(
                  icon,
                  color: Colors.white,
                ),
                const SizedBox(width: 18),
              ],
              Text(
                message,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          backgroundColor: backgroundColor,
          width: 315,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          behavior: SnackBarBehavior.floating,
        );
}
