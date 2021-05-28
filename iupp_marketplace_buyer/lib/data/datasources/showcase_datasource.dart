import '../models/models.dart';

class ShowcaseDatasource {
  Future<ShowcaseModel> getShowcaseModel() async {
    await Future.delayed(const Duration(seconds: 2));
    final json = {
      'banners': [
        {
          'id': 1,
          'bannerUrl': 'https://i.imgur.com/u6NDGqx.png',
        },
        {
          'id': 2,
          'bannerUrl': 'https://i.imgur.com/u6NDGqx.png',
        },
        {
          'id': 3,
          'bannerUrl': 'https://i.imgur.com/u6NDGqx.png',
        }
      ],
      'categorizedProducts': [
        {
          'category': 'Brand New',
          'products': [
            {
              'id': 1,
              'imageUrls': [
                'https://i.imgur.com/zZqeGqU.png',
                'https://i.imgur.com/zZqeGqU.png',
                'https://i.imgur.com/zZqeGqU.png',
                'https://i.imgur.com/zZqeGqU.png',
                'https://i.imgur.com/zZqeGqU.png',
                'https://i.imgur.com/zZqeGqU.png',
              ],
              'description':
                  'Notebook Samsung, Intel® Core™ i7 10510U, 16GB, 1TB + 128GB SS',
              'sku': 'sku',
              'sellerName': 'Magazine Luiza',
              'price': 2999,
              'fakePrice': 3499,
              'discount': 10,
              'points': 3000,
              'installments': [
                {
                  'number': 12,
                  'value': 541.58,
                }
              ],
              'variations': [
                {
                  'name': 'Memória interna',
                  'value': '128 GB',
                  'products': [],
                },
                {
                  'name': 'Cor',
                  'value': 'Azul',
                  'products': [],
                }
              ],
            },
            {
              'id': 2,
              'imageUrls': [
                'https://i.imgur.com/AQAuknv.png',
                'https://i.imgur.com/AQAuknv.png',
                'https://i.imgur.com/AQAuknv.png',
                'https://i.imgur.com/AQAuknv.png',
                'https://i.imgur.com/AQAuknv.png',
                'https://i.imgur.com/AQAuknv.png',
              ],
              'description':
                  'Cafeteira Nespresso Combo Essenza Mini Vermelho para Café',
              'sku': 'sku',
              'sellerName': 'Magazine Luiza',
              'price': 499,
              'fakePrice': 549,
              'discount': 20,
              'points': 500,
              'installments': [
                {
                  'number': 2,
                  'value': 250,
                }
              ],
              'variations': [],
            },
            {
              'id': 3,
              'imageUrls': [
                'https://i.imgur.com/9M79TvP.png',
                'https://i.imgur.com/9M79TvP.png',
                'https://i.imgur.com/9M79TvP.png',
                'https://i.imgur.com/9M79TvP.png',
                'https://i.imgur.com/9M79TvP.png',
                'https://i.imgur.com/9M79TvP.png',
              ],
              'description':
                  'Samsung Smart TV QLED 4K Q70T 55", Pontos Quânticos',
              'sku': 'sku',
              'sellerName': 'Magazine Luiza',
              'price': 1899,
              'fakePrice': 2499,
              'discount': 12,
              'points': 1900,
              'installments': [
                {
                  'number': 1,
                  'value': 1899,
                }
              ],
              'variations': [],
            }
          ],
        },
        {
          'category': 'More Points',
          'products': [
            {
              'id': 4,
              'imageUrls': [
                'https://i.imgur.com/9psrGJK.png',
                'https://i.imgur.com/9psrGJK.png',
                'https://i.imgur.com/9psrGJK.png',
                'https://i.imgur.com/9psrGJK.png',
              ],
              'description':
                  'Lava & Seca 11 Kg Samsung IOT Inox com 12 Programas de Lava',
              'sku': 'sku',
              'sellerName': 'Top Store',
              'price': 3699.8,
              'fakePrice': 4199,
              'discount': 8,
              'points': 11000,
              'installments': [
                {
                  'number': 1,
                  'value': 3699.8,
                }
              ],
              'variations': [],
            },
            {
              'id': 5,
              'imageUrls': [
                'https://i.imgur.com/yjR3b2T.png',
                'https://i.imgur.com/yjR3b2T.png',
                'https://i.imgur.com/yjR3b2T.png',
              ],
              'description':
                  'iPad Air Tela 10,9" 4ª  A A Geração Apple - Wi-Fi + Cellular 64GB',
              'sku': 'sku',
              'sellerName': 'Top Store',
              'price': 4899,
              'fakePrice': 5499,
              'discount': 11,
              'points': 14700,
              'installments': [
                {'number': 1, 'value': 4899}
              ],
              'variations': [],
            },
          ],
        }
      ],
      'offers': [
        {
          'product': {
            'id': 6,
            'imageUrls': [
              'https://i.imgur.com/GnW62sE.png',
              'https://i.imgur.com/GnW62sE.png',
            ],
            'description':
                'iPhone 12 Azul, Tela de 6,1", 5G, 128 GB, Câmera Dupla de 12MP Ultra-angular + 12MP',
            'sku': 'sku',
            'sellerName': 'Top Store',
            'price': 5999.2,
            'fakePrice': 6499,
            'discount': 11,
            'points': 2500,
            'installments': [
              {'number': 1, 'value': 5999.2}
            ],
            'variations': [],
          },
          'startDate': '2021-05-27',
          'endDate': '2021-05-28',
        }
      ],
    };
    final showcaseModel = ShowcaseModel();
    return showcaseModel.fromJson(json) as ShowcaseModel;
  }
}
