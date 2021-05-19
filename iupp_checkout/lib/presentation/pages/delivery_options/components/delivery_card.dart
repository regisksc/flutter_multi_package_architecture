import 'package:flutter/material.dart';
import 'package:iupp_components/iupp_components.dart';

class DeliveryCard extends StatelessWidget {
  const DeliveryCard({
    Key? key,
    required this.number,
  }) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Card(
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
              Text.rich(
                TextSpan(
                  text: 'Entrega 0$number por ',
                  children: const [
                    TextSpan(
                      text: 'Magazine Luiza',
                      style: TextStyle(
                        color: Color(0xFF494C57),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: Image.network(
                    'https://a-static.mlcdn.com.br/618x463/iphone-12-apple-128gb-azul-tela-61-cam-dupla-12mp-ios/magazineluiza/155598400/6b9b8ece04de165ab19587f5bd491df4.jpg'),
                title: const Expanded(
                  child: Text(
                    'iPhone 12 Preto, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const Center(
                child: Text(
                  'R\$ 5.999,20 à vista',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, i) => ListTile(
                  leading: const CircleAvatar(),
                  title: const Text('Padrão'),
                  subtitle: const Text('Em até 3 dias úteis¹'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        'Grátis',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1E8449),
                        ),
                      ),
                      SizedBox(width: 15),
                      Icon(
                        IuppIcons.icone_contorno_S_seta_direita,
                        color: Color(0xFF0070D4),
                        size: 19,
                      ),
                    ],
                  ),
                ),
                itemCount: 3,
                separatorBuilder: (_, __) => const Divider(
                  color: Color(0xFFE1E4EC),
                  height: 1,
                  thickness: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
