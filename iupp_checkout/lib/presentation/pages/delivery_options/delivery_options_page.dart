import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iupp_checkout/presentation/widgets/widgets.dart';
import 'package:iupp_components/iupp_components.dart';

import 'widgets/widgets.dart';

class DeliveryType {
  DeliveryType({
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;
}

final deliverySellers = <Widget>[
  DeliverySellerCard(
    number: 1,
    seller: 'Magazine Luiza',
    deliveryTypes: [
      DeliveryType(
        title: 'Padrão',
        subtitle: 'Em até 3 dias úteis¹',
      ),
      DeliveryType(
        title: 'Agendada',
        subtitle: 'Escolha a data',
      ),
      DeliveryType(
        title: 'Retira loja',
        subtitle: 'Consulte as lojas',
      ),
    ],
    productDescription: 'iPhone 12 Preto, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP',
    productImage: 'https://a-static.mlcdn.com.br/618x463/iphone-12-apple-128gb-azul-tela-61-cam-dupla-12mp-ios/magazineluiza/155598400/6b9b8ece04de165ab19587f5bd491df4.jpg',
  ),
  DeliverySellerCard(
    number: 2,
    seller: 'Top store',
    deliveryTypes: [
      DeliveryType(
        title: 'Padrão',
        subtitle: 'Em até 8 dias úteis¹',
      ),
    ],
    productDescription: 'Smartphone Motorola Moto G9 Play 64GB Duos 6.5" 4G Câm 48+2+2MP',
    productImage: 'https://a-static.mlcdn.com.br/618x463/smartphone-motorola-moto-g9-play-64gb-4gb-ram-camera-tripla-48mp-tela-6-5-azul-safira/commcenter/e000055/5ddbea0e4e14d0f030269e1b6a099909.jpg',
  ),
];

class DeliveryOptionsPage extends StatelessWidget {
  const DeliveryOptionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: IuppAddressAppBar(step: 2),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: BasicDeliveryInfo(),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: GeneralDeliveryInfo(),
            ),
            const Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                'opções de entrega',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ...deliverySellers,
            Padding(
              padding: const EdgeInsets.all(24),
              child: IuppElevatedButton(
                text: 'ir para o pagamento',
                textPadding: const EdgeInsets.all(13),
                fontSize: 18,
                fontWeight: FontWeight.w700,
                onPressed: () {},
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
              child: Text(
                '¹ O prazo de entrega é iniciado no 1º dia útil após a confirmação do pagamento.',
                style: TextStyle(
                  color: Color(0xFF7C7B8B),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            const IuppCheckoutFooter(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
