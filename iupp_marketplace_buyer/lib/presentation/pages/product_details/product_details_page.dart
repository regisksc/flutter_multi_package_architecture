import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';
import 'package:iupp_marketplace_buyer/presentation/widgets/widgets.dart';

import 'widgets/shipping_info.dart';
import 'widgets/widgets.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IuppMarketplaceBuyerAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Row(
              children: const [
                SizedBox(width: 20),
                Icon(Icons.arrow_back_ios, size: 18),
                SizedBox(width: 8),
                Text(
                  'iPhone 12',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
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
                carouselIndicatorContainerColor: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
            const SizedBox(height: 24),
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
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: ProductPriceInfo(),
            ),
            SizedBox(height: 24),
            PaymentInfo(),
            ShippingInfo(),
            ProductQuantity(),
            SizedBox(height: 26),
            ProductActions(),
            SizedBox(height: 48),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: WhoBoughtAlsoSaw(),
            ),
            SizedBox(height: 46),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: IuppHighlightsProducts(),
            ),
            SizedBox(height: 84),
            PaymentOptions(),
            IuppFooter(),
          ],
        ),
      ),
    );
  }
}
