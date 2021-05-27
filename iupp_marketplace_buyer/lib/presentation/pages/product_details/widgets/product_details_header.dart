import 'package:flutter/material.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader(this.productDescription, {Key? key})
      : super(key: key);

  final String productDescription;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        const Icon(Icons.arrow_back_ios, size: 18),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            productDescription,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
