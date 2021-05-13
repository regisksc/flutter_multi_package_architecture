import 'package:flutter/material.dart';
import '../utils/utils.dart';

class ISnackBar extends SnackBar {
  ISnackBar(
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
                SizedBox(width: 18),
              ],
              Text(
                message,
                style: TextStyle(
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
