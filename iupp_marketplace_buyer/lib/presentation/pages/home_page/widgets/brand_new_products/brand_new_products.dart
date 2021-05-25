import 'package:flutter/material.dart';

import '../../../../widgets/widgets.dart';

class BrandNewProducts extends StatelessWidget {
  const BrandNewProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 21),
          child: Text(
            'acabou de chegar',
            style: TextStyle(
              color: Color(0xFF23232E),
              fontWeight: FontWeight.w700,
              fontSize: 21,
            ),
          ),
        ),
        const SizedBox(height: 24),
        const HorizontalProductCard(),
        SizedBox(
          height: 300,
          child: Row(
            children: const [
              Expanded(
                child: VerticalProductCard(
                  title:
                      '''iPhone 12 Preto Tela 6,1" - 5G  - 128 GB e Câmera Dupla 12MP''',
                  imageUrl:
                      'https://a-static.mlcdn.com.br/1500x1500/iphone-12-apple-128gb-azul-tela-61-cam-dupla-12mp-ios/magazineluiza/155598400/6b9b8ece04de165ab19587f5bd491df4.jpg',
                  freeShipping: false,
                  preLaunch: true,
                  morePoints: false,
                ),
              ),
              Expanded(
                child: VerticalProductCard(
                  title:
                      '''Samsung Smart TV QLED 4K Q70T 55", Pontos Quânticos''',
                  imageUrl:
                      'https://lojaibyte.vteximg.com.br/arquivos/ids/204887-1200-1200/smart-tv-qled-55-4k-q70t-2020-samsung-wi-fi-bluetooth-hdr-4-hdmi-2-usb-01.jpg?v=637353633619530000',
                  freeShipping: true,
                  preLaunch: false,
                  morePoints: false,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
