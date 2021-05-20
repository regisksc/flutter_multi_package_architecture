import 'package:flutter/material.dart';

class IuppDivider extends StatelessWidget {
  const IuppDivider({
    Key? key,
    this.verticalPadding,
    this.heigth = 1,
  }) : super(key: key);

  final double heigth;
  final double? verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:  verticalPadding ?? 0),
      child: Divider(
        thickness: heigth,
        color: const Color(0xFFE1E4EC),
      ),
    );
  }
}
