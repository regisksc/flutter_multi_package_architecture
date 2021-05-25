import 'package:flutter/material.dart';

class PromotionCard extends StatelessWidget {
  const PromotionCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  final String item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        width: 315,
        child: Image.asset(
          item,
          package: 'iupp_components',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
