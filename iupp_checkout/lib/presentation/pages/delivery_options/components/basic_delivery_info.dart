import 'package:flutter/material.dart';

class BasicDeliveryInfo extends StatelessWidget {
  const BasicDeliveryInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Endereço',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          'alterar',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xFF0070D4),
          ),
        ),
      ],
    );
  }
}
