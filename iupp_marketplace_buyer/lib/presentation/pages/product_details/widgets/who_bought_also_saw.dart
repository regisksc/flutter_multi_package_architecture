import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';

class WhoBoughtAlsoSaw extends StatelessWidget {
  const WhoBoughtAlsoSaw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'quem comprou também viu',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 26),
        SizedBox(
          height: 340,
          child: Row(
            children: const [
              Expanded(
                child: VerticalProductCard(
                  title:
                      '''iPhone 12 Preto Tela 6,1" - 5G  - 128 GB e Câmera Dupla 12MP''',
                  imageUrl:
                      'https://a-static.mlcdn.com.br/1500x1500/iphone-12-apple-128gb-azul-tela-61-cam-dupla-12mp-ios/magazineluiza/155598400/6b9b8ece04de165ab19587f5bd491df4.jpg',
                  freeShipping: true,
                  preLaunch: true,
                  morePoints: false,
                ),
              ),
              Expanded(
                child: VerticalProductCard(
                  title: '''iPad Air Tela 10,9" 4ª  A A Geração Apple''',
                  imageUrl:
                      'https://a-static.mlcdn.com.br/180x200/ipad-air-4-geracao-ouro-rosa-com-tela-de-109-wi-fi-256-gb-e-processador-a14-bionic-myfx2bz-a-apple/fastshop2/aemyfx2bzarsab/b12ca2523d2ec08fa61a53715d56ecae.jpg',
                  freeShipping: false,
                  preLaunch: true,
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
