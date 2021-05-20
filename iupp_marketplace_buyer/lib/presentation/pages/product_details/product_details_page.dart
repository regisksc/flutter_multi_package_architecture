import 'package:flutter/material.dart';
import 'package:iupp_components/iupp_components.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IuppAppBar(
        shapeBorder: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: const [
                Icon(Icons.arrow_back_ios),
                Text('iPhone 12'),
              ],
            ),
            SizedBox(
              height: 260,
              child: IuppCarrouselSlider(
                items: [
                  Image.network(
                    'https://a-static.mlcdn.com.br/618x463/iphone-12-128gb-azul-apple/apple10/311984/b65d0329afb207994b5abccab391cc25.jpg',
                  ),
                  Image.network(
                    'https://a-static.mlcdn.com.br/1500x1500/iphone-12-128gb-azul-apple/apple10/311984/6507ebca2626ff2d4ec76109c01a8f9c.jpg',
                  ),
                  Image.network(
                    'https://a-static.mlcdn.com.br/1500x1500/iphone-12-128gb-azul-apple/apple10/311984/bdf1fa8c505a17f5d6a82d2c60899b14.jpg',
                  ),
                  Image.network(
                    'https://a-static.mlcdn.com.br/1500x1500/iphone-12-128gb-azul-apple/apple10/311984/be901917c83aedd20b26b1b8810ee1b9.jpg',
                  ),
                ],
                carouselIndicator: CarouselIndicator.dots,
                carouselIndicatorContainerColor:
                    Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
                '''iPhone 12 Preto, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP Ultra-angular + 12MP Grade-angular'''),
            const SizedBox(height: 8),
            const Text('Código: MGJA3BZ29823'),
            const Text('Vendido e entregue por Magazine Luiza'),
            Row(
              children: const [
                Icon(IuppIcons.icone_solidos_F_favorito),
                Icon(IuppIcons.icone_solidos_F_favorito),
                Icon(IuppIcons.icone_solidos_F_favorito),
                Icon(IuppIcons.icone_solidos_F_favorito),
                Icon(IuppIcons.icone_solidos_F_favorito),
                Text('(12)'),
                Spacer(),
                Icon(IuppIcons.icone_contorno_C_compartilhar_outline),
              ],
            ),
            const Divider(),
            ListTile(
              title: const Text('Memória interna 128 GB'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('(+2)'),
                  Icon(IuppIcons.icone_contorno_S_seta_direita),
                ],
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text('Cor Azul'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    'https://a-static.mlcdn.com.br/618x463/iphone-12-128gb-azul-apple/apple10/311984/b65d0329afb207994b5abccab391cc25.jpg',
                  ),
                  const Text('(+3)'),
                  const Icon(IuppIcons.icone_contorno_S_seta_direita),
                ],
              ),
            ),
            const Divider(),
            const SizedBox(height: 30),
            const Text('R\$ 7.499,00'),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('R\$ 5.999,20'),
                Text('à vista'),
                Text('-20%'),
              ],
            ),
            const Text('ganhe 2.500 pontos'),
            const Divider(),
            const ListTile(
              leading: Icon(IuppIcons.icone_contorno_C_cartao_outline),
              title: Text('Em até 12x de R\$ 541,58 sem juros'),
              trailing: Icon(
                IuppIcons.icone_contorno_S_seta_direita,
                color: Color(0xFF0070D4),
              ),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(IuppIcons.icone_contorno_A_agencia_outline),
              title: Text('Calcule frete e prazo'),
              trailing: Icon(
                IuppIcons.icone_contorno_S_seta_direita,
                color: Color(0xFF0070D4),
              ),
            ),
            const Divider(),
            const ListTile(
              title: Text('Quantidade: 1 unidade'),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
