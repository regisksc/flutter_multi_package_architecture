import 'dart:ui';

import 'package:flutter/material.dart';

class CheckoutDisclaimer extends StatelessWidget {
  const CheckoutDisclaimer({
    Key? key,
    required this.disclaimer,
    required this.position,
  }) : super(key: key);

  final String disclaimer;
  final int position;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: const TextStyle(
          color: Color(0xFF7C7B8B),
        ),
        children: [
          TextSpan(
            text: position.toString(),
            style: const TextStyle(
              fontFeatures: [FontFeature.enable('sups')],
            ),
          ),
          const TextSpan(text: ' '),
          TextSpan(text: disclaimer)
        ],
      ),
    );
  }
}
