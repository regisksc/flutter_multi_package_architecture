import 'package:flutter/material.dart';

class OffermeterCounterText extends StatelessWidget {
  const OffermeterCounterText({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        color: Colors.white,
      ),
    );
  }
}
