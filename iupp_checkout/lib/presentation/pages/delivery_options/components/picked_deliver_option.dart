import 'package:flutter/material.dart';

class PickedDeliverOption extends StatelessWidget {
  const PickedDeliverOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF0070D4),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Padding(
        padding: EdgeInsets.all(3),
        child: CircleAvatar(
          backgroundColor: Color(0xFF0070D4),
          radius: 6,
        ),
      ),
    );
  }
}
