import 'package:flutter/material.dart';

class UnpickedDeliverOption extends StatelessWidget {
  const UnpickedDeliverOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF7C7B8B),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Padding(
        padding: EdgeInsets.all(3),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 6,
        ),
      ),
    );
  }
}
