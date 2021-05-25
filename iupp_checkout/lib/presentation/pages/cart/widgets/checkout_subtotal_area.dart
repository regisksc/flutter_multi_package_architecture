import 'package:flutter/material.dart';
import '../../../../helpers/get_formated_money.dart';

class CheckoutSubtotalArea extends StatelessWidget {
  const CheckoutSubtotalArea({
    Key? key,
    required this.points,
    required this.total,
  }) : super(key: key);

  final double total;
  final int points;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Subtotal',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Color(0xFF494C57),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              getFormatedMoney(total),
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF494C57),
                  fontSize: 16),
            ),
            Text(
              'Ganhe $points pontos',
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1E8449),
                  fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
