import 'package:flutter/material.dart';

class IconSpacer extends StatelessWidget {
  const IconSpacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        height: 0.8,
        width: 24,
        color: Colors.white,
      ),
    );
  }
}