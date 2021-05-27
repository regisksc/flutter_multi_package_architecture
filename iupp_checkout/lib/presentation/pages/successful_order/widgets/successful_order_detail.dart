import 'package:flutter/material.dart';
import 'package:iupp_components/components/atoms/buttons/iupp_elevated_button.dart';
import 'package:iupp_components/components/atoms/dividers/dividers.dart';
import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core/resources/formatters/app_formatters.dart';

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: orderSummary,
            ),
          ),
          const SizedBox(
            height: SizeConstants.pageSidePadding,
          ),
          const IuppDivider(),
          const ProductDetailsRow(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: SizeConstants.pageSidePadding),
            child: IuppElevatedButton(
              text: 'continuar comprando',
              onPressed: () {},
            ),
          ),
          const Text('¹ Os pontos serão creditados em até 40 dias após a confirmação do pagamento.'),
          const Text('² O prazo de entrega é iniciado no 1º dia útil após a confirmação do pagamento.')
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

class OrderItem {
  const OrderItem({
    required this.imageURL,
    required this.description,
    required this.costInReal,
    required this.costInPoints,
    required this.deliveredBy,
    required this.expectedDelivery,
  });

  final String description;
  final double costInReal;
  final String imageURL;
  final double costInPoints;
  final String deliveredBy;
  final String expectedDelivery;
}
