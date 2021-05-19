import 'package:flutter/material.dart';

class DeliverOptionCheckBox extends StatelessWidget {
  const DeliverOptionCheckBox({
    Key? key,
    required this.isPicked,
  }) : super(key: key);

  final bool isPicked;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: isPicked ? const Color(0xFF0070D4) : const Color(0xFF7C7B8B),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: CircleAvatar(
          backgroundColor: isPicked ? const Color(0xFF0070D4) : Colors.white,
          radius: 6,
        ),
      ),
    );
  }
}
