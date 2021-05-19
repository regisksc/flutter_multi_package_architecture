import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iupp_checkout/presentation/widgets/iupp_address_app_bar.dart';
import 'package:iupp_checkout/presentation/widgets/iupp_checkout_footer.dart';
import 'package:iupp_components/buttons/iupp_elevated_button.dart';

class DeliveryOptionsPage extends StatelessWidget {
  const DeliveryOptionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: IuppAddressAppBar(step: 2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
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
            ),
          ),
          const SizedBox(height: 8),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Av. Brigadeiro Luís Antônio, 190 - Apto. 12 Bloco A -',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'São Paulo - SP - CEP 01318-002',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Antônio Coutinho - (11) 99999-9999',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
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
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Entrega por Magazine Luiza',
                          style: TextStyle(
                            color: Color(0xFF494C57),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        ListTile(
                          leading: Image.network('https://a-static.mlcdn.com.br/618x463/iphone-12-apple-128gb-azul-tela-61-cam-dupla-12mp-ios/magazineluiza/155598400/6b9b8ece04de165ab19587f5bd491df4.jpg'),
                          title: const Text('iPhone 12 Preto, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP'),
                        ),
                        const Text('R\$ 5.999,20 à vista'),
                        const ListTile(
                          leading: CircleAvatar(),
                          title: Text('Padrão'),
                          subtitle: Text('Em até 3 dias úteis'),
                          trailing: Text('Grátis'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
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
          const Spacer(),
          const IuppCheckoutFooter(),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
