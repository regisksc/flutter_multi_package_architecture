import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iupp_checkout/presentation/pages/address_register/widgets/cep_form_field.dart';
import 'package:iupp_checkout/presentation/widgets/widgets.dart';
import 'package:iupp_components/iupp_components.dart';
import 'package:iupp_core/core/navigator/navigator.dart';

import 'cart_controller.dart';
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

  bool get isEmpty => !controller.isEmpty;

  @override
  Widget build(BuildContext context) {
    return IuppCheckoutScaffold(
      child: isEmpty
          ? const EmptyCart()
          : Column(
              children: [
                IuppCard(
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
                    const IuppDivider(
                      verticalPadding: 29,
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
                    const IuppDivider(
                      verticalPadding: 29,
                    ),
                    CepFormField(cep: '', onChanged: (value) => print(value)),
                    const IuppDivider(
                      verticalPadding: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Subtotal",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xFF494C57),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'R 5.999,20',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF494C57),
                                  fontSize: 16),
                            ),
                            Text(
                              'Ganhe 2.500 pontos',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF1E8449),
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                CheckoutButtonNavigateWidget(
                  label: 'continuar',
                  onpressed: () => NavigatorService().navigateTo('/home'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 24, right: 24, top: 24),
                  child: Text(
                    '¹ Os pontos serão creditados em até 40 dias após a confirmação do pagamento.',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF7C7B8B)),
                  ),
                ),
              ],
            ),
    );
  }
}
