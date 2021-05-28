import '../models/models.dart';

class ShowcaseDatasource {
  Future<ShowcaseModel> getShowcaseModel() async {
    await Future.delayed(const Duration(seconds: 2));
    return ShowcaseModel(
      banners: [
        BannerModel(id: 1, bannerUrl: 'https://i.imgur.com/u6NDGqx.png'),
        BannerModel(id: 2, bannerUrl: 'https://i.imgur.com/u6NDGqx.png'),
        BannerModel(id: 3, bannerUrl: 'https://i.imgur.com/u6NDGqx.png'),
      ],
      categorizedProducts: [
        CategorizedProductsModel(
          category: 'Brand New',
          products: [
            ProductModel(
              id: 1,
              imageUrls: [
                'https://i.imgur.com/zZqeGqU.png',
                'https://a-static.mlcdn.com.br/1500x1500/notebook-samsung-intel-core-i7-10510u-16gb-1tb-128gb-ssd-tela-de-156-prata-book-x55-np550xcj-xs2br/fastshop2/sgnp550xcjxs2b/7af90fd5599976cb17d31fa13554e448.jpg',
                'https://a-static.mlcdn.com.br/1500x1500/notebook-samsung-intel-core-i7-10510u-16gb-1tb-128gb-ssd-tela-de-156-prata-book-x55-np550xcj-xs2br/fastshop2/sgnp550xcjxs2b/e712d476bd2186acb75d61f646c7ad04.jpg',
                'https://a-static.mlcdn.com.br/1500x1500/notebook-samsung-intel-core-i7-10510u-16gb-1tb-128gb-ssd-tela-de-156-prata-book-x55-np550xcj-xs2br/fastshop2/sgnp550xcjxs2b/c8c66cfc6bc420b805f3e8532d89fdc5.jpg',
                'https://a-static.mlcdn.com.br/1500x1500/notebook-samsung-intel-core-i7-10510u-16gb-1tb-128gb-ssd-tela-de-156-prata-book-x55-np550xcj-xs2br/fastshop2/sgnp550xcjxs2b/c58727873a79851c9f51ab674199f19d.jpg',
                'https://a-static.mlcdn.com.br/1500x1500/notebook-samsung-intel-core-i7-10510u-16gb-1tb-128gb-ssd-tela-de-156-prata-book-x55-np550xcj-xs2br/fastshop2/sgnp550xcjxs2b/b9fca704cde21d46c6c6561f82a667e6.jpg',
              ],
              description:
                  'Notebook Samsung, Intel® Core™ i7 10510U, 16GB, 1TB + 128GB SS',
              sku: 'sku',
              sellerName: 'Magazine Luiza',
              price: 2999,
              fakePrice: 3499,
              discount: 10,
              points: 3000,
              installments: [
                InstallmentModel(number: 12, value: 541.58),
              ],
              variations: [
                ProductVariationModel(
                  name: 'Memória interna',
                  value: '128 GB',
                  products: [],
                ),
                ProductVariationModel(
                  name: 'Cor',
                  value: 'Azul',
                  products: [],
                ),
              ],
            ),
            ProductModel(
              id: 2,
              imageUrls: [
                'https://i.imgur.com/AQAuknv.png',
                'https://www.fastshop.com.br/wcsstore/FastShopCAS/imagens/_UT_Utilidades/NLA3NRD30BVRM/V5/NLA3NRD30BVRM_PRD_1500_2.jpg',
                'https://www.fastshop.com.br//wcsstore/FastShopCAS/imagens/_UT_Utilidades/NLA3NRD30BVRM/V5/NLA3NRD30BVRM_PRD_447_3.jpg',
                'https://www.fastshop.com.br//wcsstore/FastShopCAS/imagens/_UT_Utilidades/NLA3NRD30BVRM/V5/NLA3NRD30BVRM_PRD_447_6.jpg',
                'https://www.fastshop.com.br//wcsstore/FastShopCAS/imagens/_UT_Utilidades/NLA3NRD30BVRM/V5/NLA3NRD30BVRM_PRD_447_7.jpg',
                'https://www.fastshop.com.br//wcsstore/FastShopCAS/imagens/_UT_Utilidades/NLA3NRD30BVRM/V5/NLA3NRD30BVRM_PRD_447_9.jpg',
              ],
              description:
                  'Cafeteira Nespresso Combo Essenza Mini Vermelho para Café',
              sku: 'sku',
              sellerName: 'Magazine Luiza',
              price: 499,
              fakePrice: 549,
              discount: 20,
              points: 500,
              installments: [
                InstallmentModel(number: 2, value: 250),
              ],
              variations: [],
            ),
            ProductModel(
              id: 3,
              imageUrls: [
                'https://i.imgur.com/9M79TvP.png',
                'https://www.fastshop.com.br//wcsstore/FastShopCAS/imagens/_VD_Video/v3/SGQN55Q70TA_PRD_447_2.jpg',
                'https://www.fastshop.com.br//wcsstore/FastShopCAS/imagens/_VD_Video/v3/SGQN55Q70TA_PRD_447_3.jpg',
                'https://www.fastshop.com.br//wcsstore/FastShopCAS/imagens/_VD_Video/v3/SGQN55Q70TA_PRD_447_4.jpg',
                'https://www.fastshop.com.br//wcsstore/FastShopCAS/imagens/_VD_Video/v3/SGQN55Q70TA_PRD_447_5.jpg',
                'https://www.fastshop.com.br//wcsstore/FastShopCAS/imagens/_VD_Video/v3/SGQN55Q70TA_PRD_447_7.jpg',
              ],
              description:
                  'Samsung Smart TV QLED 4K Q70T 55", Pontos Quânticos',
              sku: 'sku',
              sellerName: 'Magazine Luiza',
              price: 1899,
              fakePrice: 2499,
              discount: 12,
              points: 1900,
              installments: [
                InstallmentModel(number: 1, value: 1899),
              ],
              variations: [],
            ),
          ],
        ),
        CategorizedProductsModel(
          category: 'More Points',
          products: [
            ProductModel(
              id: 4,
              imageUrls: [
                'https://i.imgur.com/9psrGJK.png',
                'https://a-static.mlcdn.com.br/618x463/lava-e-seca-samsung-11kg-wd11m4453j-12-programas-de-lavagem/magazineluiza/010591200/42a3a8dab0203400a10894327234a94f.jpg',
                'https://a-static.mlcdn.com.br/618x463/lava-e-seca-samsung-11kg-wd11m4453j-12-programas-de-lavagem/magazineluiza/010591200/58a55db6be9487e2c084abf973611d3a.jpg',
                'https://a-static.mlcdn.com.br/1500x1500/lava-e-seca-samsung-11kg-wd11m4453j-12-programas-de-lavagem/magazineluiza/010591200/65291a55617f0c315b9b3e8f1dac461f.jpg',
                'https://a-static.mlcdn.com.br/1500x1500/lava-e-seca-samsung-11kg-wd11m4453j-12-programas-de-lavagem/magazineluiza/010591200/b16ac6b8cdc2733ba81424d32cc3ba25.jpg',
                'https://a-static.mlcdn.com.br/1500x1500/lava-e-seca-samsung-11kg-wd11m4453j-12-programas-de-lavagem/magazineluiza/010591200/9816ce91d39d960bc45e6aa87c9d03f1.jpg',
              ],
              description:
                  'Lava & Seca 11 Kg Samsung IOT Inox com 12 Programas de Lava',
              sku: 'sku',
              sellerName: 'Top Store',
              price: 3699.8,
              fakePrice: 4199,
              discount: 8,
              points: 11000,
              installments: [
                InstallmentModel(number: 1, value: 3699.8),
              ],
              variations: [],
            ),
            ProductModel(
              id: 5,
              imageUrls: [
                'https://i.imgur.com/yjR3b2T.png',
                'https://images-na.ssl-images-amazon.com/images/I/51gJM0JxhzL._AC_SL1000_.jpg',
                'https://images-na.ssl-images-amazon.com/images/I/61Ax0KtUWML._AC_SL1000_.jpg',
                'https://images-na.ssl-images-amazon.com/images/I/41XJEqcweQL._AC_SL1000_.jpg',
              ],
              description:
                  'iPad Air Tela 10,9" 4ª  A A Geração Apple - Wi-Fi + Cellular 64GB',
              sku: 'sku',
              sellerName: 'Top Store',
              price: 4899,
              fakePrice: 5499,
              discount: 11,
              points: 14700,
              installments: [
                InstallmentModel(number: 1, value: 4899),
              ],
              variations: [],
            ),
          ],
        ),
      ],
      offers: [
        OfferModel(
          product: ProductModel(
            id: 6,
            imageUrls: [
              'https://i.imgur.com/GnW62sE.png',
              'https://a-static.mlcdn.com.br/1500x1500/iphone-12-apple-128gb-azul-tela-61-cam-dupla-12mp-ios/magazineluiza/155598400/08765f2e185d76871edef70a7c3f05cf.jpg',
              'https://a-static.mlcdn.com.br/1500x1500/iphone-12-apple-128gb-azul-tela-61-cam-dupla-12mp-ios/magazineluiza/155598400/2b10bb1738f0922dc66c3cd78b85b34f.jpg',
            ],
            description:
                'iPhone 12 Azul, Tela de 6,1", 5G, 128 GB, Câmera Dupla de 12MP Ultra-angular + 12MP',
            sku: 'sku',
            sellerName: 'Top Store',
            price: 5999.2,
            fakePrice: 6499,
            discount: 11,
            points: 2500,
            installments: [
              InstallmentModel(number: 1, value: 5999.2),
            ],
            variations: [],
          ),
          startDate: '2021-05-27',
          endDate: '2021-05-28',
        ),
      ],
    );
  }
}
