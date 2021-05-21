import 'package:flutter/material.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(width: 20),
        Icon(Icons.arrow_back_ios, size: 18),
        SizedBox(width: 8),
        Text(
          'iPhone 12',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
