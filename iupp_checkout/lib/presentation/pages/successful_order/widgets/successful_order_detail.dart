import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

import '../../../presentation.dart';

class SuccessfulOrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const orderSummaryConcrete = OrderSummary(orderId: '9054400807461679', userEmail: 'antoniocountinho@gmail.com');

    final orderSummary = <Widget>[
      const Text(
        'Número do pedido:',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      Text(
        orderSummaryConcrete.orderId,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
      Text(
        'Enviamos a confirmação de pedido para:\n${orderSummaryConcrete.userEmail}',
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: 1.5),
      ),
      const Text(
        'Acompanhar pedido',
        style: TextStyle(
          color: Color(0xFF0070D4),
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(SizeConstants.pageSidePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: orderSummary,
          ),
          const SizedBox(
            height: SizeConstants.pageSidePadding,
          ),
          const IuppDivider(),
          ProductDetailsList(items: orderItems),
        ],
      ),
    );
  }
}

class OrderSummary {
  const OrderSummary({
    required this.orderId,
    required this.userEmail,
  });

  final String orderId;
  final String userEmail;
}
