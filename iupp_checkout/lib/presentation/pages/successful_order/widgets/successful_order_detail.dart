import 'package:flutter/material.dart';
import 'package:iupp_components/components/atoms/buttons/iupp_elevated_button.dart';
import 'package:iupp_components/components/atoms/dividers/dividers.dart';
import 'package:iupp_core/core/resources/formatters/app_formatters.dart';

class SuccessfulOrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const orderSummaryConcrete = OrderSummary(
        orderId: '9054400807461679', userEmail: 'antoniocountinho@gmail.com');

    const orderItems = [
      OrderItem(
        imageURL:
            'https://www.blitzmicro.eu/11082-medium_default/AP-MGDF3QLA.jpg',
        description:
            'iPhone 12 Azul, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP',
        costInReal: 5999.20,
        costInPoints: 2500,
        deliveredBy: 'Entrega 01 por Magazine Luiza',
        expectedDelivery: 'Em até 3 dias úteis²',
      ),
      OrderItem(
        imageURL:
            'https://www.blitzmicro.eu/11082-medium_default/AP-MGDF3QLA.jpg',
        description:
            'Smartphone Motorola Moto G9 Play 64GB Duos 6.5" 4G Câm 48+2+2MP',
        costInReal: 1855.9,
        costInPoints: 733,
        deliveredBy: 'Entrega 02 por Top Store',
        expectedDelivery: 'Em até 8 dias úteis²',
      ),
    ];

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
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
      Text(
        'Enviamos a confirmação de pedido para:\n${orderSummaryConcrete.userEmail}',
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w400, height: 1.5),
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
      padding: const EdgeInsets.all(24.0),
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
            height: 24,
          ),
          const IuppDivider(),
          ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.all(0),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final item = orderItems[index];
              return Flex(
                direction: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: SizedBox(
                      width: 60,
                      height: 45,
                      child: Image.network(item.imageURL),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(formatMonetaryValue(item.costInReal)),
                        Text(item.costInPoints.toString()),
                        Text(item.deliveredBy),
                        Text(item.expectedDelivery),
                      ],
                    ),
                  )
                ],
              );
            },
            separatorBuilder: (_, __) => const IuppDivider(
              verticalPadding: 24,
            ),
            itemCount: orderItems.length,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: IuppElevatedButton(
              text: 'continuar comprando',
              onPressed: () {},
            ),
          ),
          const Text(
              '¹ Os pontos serão creditados em até 40 dias após a confirmação do pagamento.'),
          const Text(
              '² O prazo de entrega é iniciado no 1º dia útil após a confirmação do pagamento.')
        ],
      ),
    );
  }

  List<Widget> _addPadding(List<Widget> widgets) {
    return widgets
        .map((item) => Padding(
              padding: const EdgeInsets.all(8),
              child: item,
            ))
        .toList();
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
