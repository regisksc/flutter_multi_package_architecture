import 'package:flutter/material.dart';

class ProductDiscountChip extends StatelessWidget {
  const ProductDiscountChip({
    Key? key,
    required this.discount,
  }) : super(key: key);

  final double discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 26,
      decoration: BoxDecoration(
        color: const Color(0xFF1E8449),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          '-$discount%',
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
