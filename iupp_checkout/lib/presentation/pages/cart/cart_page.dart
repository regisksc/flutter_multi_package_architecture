import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iupp_checkout/presentation/pages/address_register/widgets/cep_form_field.dart';
import 'package:iupp_checkout/presentation/widgets/widgets.dart';
import 'package:iupp_components/iupp_components.dart';

import 'cart_controller.dart';
import 'widgets/empty_cart_widget/empty_cart.dart';
import 'widgets/widgets.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late CartController controller;
  @override
  void initState() {
    controller = CartController();
    controller.cartNotifier.addListener(() => setState(() {}));
    super.initState();
  }

  bool get isEmpty => controller.isEmpty;

  @override
  Widget build(BuildContext context) {
    return IuppCheckoutScafold(
      flexSpace: isEmpty ? 7 : 1,
      child: isEmpty
          ? const EmptyCart()
          : IuppCard(
              children: [
                ItemCartWidget(
                  photoUrl:
                      'https://a-static.mlcdn.com.br/618x463/iphone-12-apple-64gb-azul-61-cam-dupla-12mp-ios/magazineluiza/155597900/42720757e2ad2307009d75f22d457e80.jpg',
                  description:
                      'iPhone 12 Preto, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP',
                  sellerName: 'Magazine Luíza',
                  price: '5999.20',
                  points: '2500',
                  count: 1,
                  increment: () => print('incremenet'),
                  decrement: () => print('decrement'),
                ),
                ItemCartWidget(
                  photoUrl:
                      'https://a-static.mlcdn.com.br/618x463/iphone-12-apple-64gb-azul-61-cam-dupla-12mp-ios/magazineluiza/155597900/42720757e2ad2307009d75f22d457e80.jpg',
                  description:
                      'iPhone 12 Preto, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP',
                  sellerName: 'Magazine Luíza',
                  price: '5999.20',
                  points: '2500',
                  count: 1,
                  increment: () => print('incremenet'),
                  decrement: () => print('decrement'),
                ),
                ItemCartWidget(
                  photoUrl:
                      'https://a-static.mlcdn.com.br/618x463/iphone-12-apple-64gb-azul-61-cam-dupla-12mp-ios/magazineluiza/155597900/42720757e2ad2307009d75f22d457e80.jpg',
                  description:
                      'iPhone 12 Preto, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP',
                  sellerName: 'Magazine Luíza',
                  price: '5999.20',
                  points: '2500',
                  count: 1,
                  increment: () => print('incremenet'),
                  decrement: () => print('decrement'),
                ),
                ItemCartWidget(
                  photoUrl:
                      'https://a-static.mlcdn.com.br/618x463/iphone-12-apple-64gb-azul-61-cam-dupla-12mp-ios/magazineluiza/155597900/42720757e2ad2307009d75f22d457e80.jpg',
                  description:
                      'iPhone 12 Preto, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP',
                  sellerName: 'Magazine Luíza',
                  price: '5999.20',
                  points: '2500',
                  count: 1,
                  increment: () => print('incremenet'),
                  decrement: () => print('decrement'),
                ),
                ItemCartWidget(
                  photoUrl:
                      'https://a-static.mlcdn.com.br/618x463/iphone-12-apple-64gb-azul-61-cam-dupla-12mp-ios/magazineluiza/155597900/42720757e2ad2307009d75f22d457e80.jpg',
                  description:
                      'iPhone 12 Preto, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP',
                  sellerName: 'Magazine Luíza',
                  price: '5999.20',
                  points: '2500',
                  count: 1,
                  increment: () => print('incremenet'),
                  decrement: () => print('decrement'),
                ),
                const IuppDivider(),
                CepFormField(cep: '', onChanged: (value) => print(value))
              ],
            ),
    );
  }
}
