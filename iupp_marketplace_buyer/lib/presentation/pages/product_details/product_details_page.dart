import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

import '../../../domain/entity/entities.dart';
import '../../presentation.dart';
import 'widgets/widgets.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage(this.product, {Key? key}) : super(key: key);

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IuppMarketplaceBuyerAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            ProductDetailsHeader(product.description),
            ProductCarouselImages(product.imageUrls),
            const SizedBox(height: 24),
            ProductInfo(product),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: ProductPriceInfo(product),
            ),
            const SizedBox(height: 24),
            PaymentInfo(product.installments),
            const ShippingInfo(),
            const ProductQuantity(),
            const SizedBox(height: 26),
            const ProductActions(),
            const SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: WhoBoughtAlsoSaw(
                [
                  ProductEntity(
                    id: 10,
                    imageUrls: const [
                      'https://a-static.mlcdn.com.br/1500x1500/iphone-12-apple-128gb-azul-tela-61-cam-dupla-12mp-ios/magazineluiza/155598400/6b9b8ece04de165ab19587f5bd491df4.jpg',
                    ],
                    description:
                        'iPhone 12 Preto Tela 6,1" - 5G  - 128 GB e Câmera Dupla 12MP',
                    sku: 'sku',
                    sellerName: 'Magazine Luiza',
                    price: 499,
                    fakePrice: 549,
                    discount: 0,
                    points: 500,
                    installments: const [],
                    variations: const [],
                  ),
                  ProductEntity(
                    id: 10,
                    imageUrls: const [
                      'https://a-static.mlcdn.com.br/180x200/ipad-air-4-geracao-ouro-rosa-com-tela-de-109-wi-fi-256-gb-e-processador-a14-bionic-myfx2bz-a-apple/fastshop2/aemyfx2bzarsab/b12ca2523d2ec08fa61a53715d56ecae.jpg',
                    ],
                    description: 'iPad Air Tela 10,9" 4ª  A A Geração Apple',
                    sku: 'sku',
                    sellerName: 'Magazine Luiza',
                    price: 4999,
                    fakePrice: 5499,
                    discount: 0,
                    points: 2500,
                    installments: const [],
                    variations: const [],
                  )
                ],
              ),
            ),
            const SizedBox(height: 46),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: IuppHighlightsProducts(
                [
                  ProductEntity(
                    id: 10,
                    imageUrls: const [
                      'https://a-static.mlcdn.com.br/1500x1500/iphone-12-apple-128gb-azul-tela-61-cam-dupla-12mp-ios/magazineluiza/155598400/6b9b8ece04de165ab19587f5bd491df4.jpg',
                    ],
                    description:
                        'iPhone 12 Preto Tela 6,1" - 5G  - 128 GB e Câmera Dupla 12MP',
                    sku: 'sku',
                    sellerName: 'Magazine Luiza',
                    price: 499,
                    fakePrice: 549,
                    discount: 0,
                    points: 500,
                    installments: const [],
                    variations: const [],
                  ),
                  ProductEntity(
                    id: 10,
                    imageUrls: const [
                      'https://a-static.mlcdn.com.br/180x200/ipad-air-4-geracao-ouro-rosa-com-tela-de-109-wi-fi-256-gb-e-processador-a14-bionic-myfx2bz-a-apple/fastshop2/aemyfx2bzarsab/b12ca2523d2ec08fa61a53715d56ecae.jpg',
                    ],
                    description: 'iPad Air Tela 10,9" 4ª  A A Geração Apple',
                    sku: 'sku',
                    sellerName: 'Magazine Luiza',
                    price: 4999,
                    fakePrice: 5499,
                    discount: 0,
                    points: 2500,
                    installments: const [],
                    variations: const [],
                  )
                ],
              ),
            ),
            const SizedBox(height: 84),
            const PaymentOptions(),
            const IuppFooter(),
          ],
        ),
      ),
    );
  }
}
