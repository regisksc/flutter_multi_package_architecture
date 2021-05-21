import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iupp_components/components/components.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '''iPhone 12 Preto, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP Ultra-angular + 12MP Grade-angular''',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.only(left: 14),
          child: Text(
            'Código: MGJA3BZ29823',
            style: TextStyle(
              color: Color(0xFF7C7B8B),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 4),
        const Padding(
          padding: EdgeInsets.only(left: 14),
          child: Text.rich(
            TextSpan(
              text: 'Vendido e entregue por ',
              style: TextStyle(
                color: Color(0xFF7C7B8B),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: 'Magazine Luiza',
                  style: TextStyle(
                    color: Color(0xFF7C7B8B),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 33),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              const Icon(
                IuppIcons.icone_solidos_F_favorito,
                color: Color(0xFF007DED),
              ),
              const Icon(
                IuppIcons.icone_solidos_F_favorito,
                color: Color(0xFF007DED),
              ),
              const Icon(
                IuppIcons.icone_solidos_F_favorito,
                color: Color(0xFF007DED),
              ),
              const Icon(
                IuppIcons.icone_solidos_F_favorito,
                color: Color(0xFF007DED),
              ),
              const Icon(
                IuppIcons.icone_solidos_F_favorito,
                color: Color(0xFFE1E4EC),
              ),
              const SizedBox(width: 8),
              const Text(
                '(12)',
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  elevation: 0,
                  child: const Icon(IuppIcons.icone_contorno_C_compartilhar_outline, size: 32, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        const IuppDivider(),
        ListTile(
          title: const Text.rich(TextSpan(
              text: 'Memória interna ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: ' 128 GB',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ])),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('(+2)'),
              Icon(
                IuppIcons.icone_contorno_S_seta_direita,
                color: Color(0xFF0070D4),
              ),
            ],
          ),
        ),
        const IuppDivider(),
        ListTile(
          title: const Text.rich(TextSpan(
              text: 'Cor ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: ' Azul',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ])),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                'https://a-static.mlcdn.com.br/618x463/iphone-12-128gb-azul-apple/apple10/311984/b65d0329afb207994b5abccab391cc25.jpg',
              ),
              const Text('(+3)'),
              const Icon(
                IuppIcons.icone_contorno_S_seta_direita,
                color: Color(0xFF0070D4),
              ),
            ],
          ),
        ),
        const IuppDivider(),
      ],
    );
  }
}
