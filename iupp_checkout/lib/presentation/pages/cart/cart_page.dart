import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iupp_checkout/presentation/pages/cart/widgets/checkout_cep_area.dart';
import 'package:iupp_checkout/presentation/pages/cart/widgets/checkout_subtotal_area.dart';
import 'package:iupp_checkout/presentation/widgets/widgets.dart';
import 'package:iupp_components/components/components.dart';

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
    return CheckoutScaffold(
      whiteSpace: 1,
      child: isEmpty
          ? const CheckoutEmptyCart()
          : Column(
              children: [
                IuppCard(
                  children: [
                    CheckoutItemCart(
                      photoUrl:
                          'https://a-static.mlcdn.com.br/618x463/iphone-12-apple-64gb-azul-61-cam-dupla-12mp-ios/magazineluiza/155597900/42720757e2ad2307009d75f22d457e80.jpg',
                      description:
                          'iPhone 12 Preto, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP',
                      sellerName: 'Magazine Luíza',
                      price: 5999.20,
                      points: '2500',
                      count: 1,
                      expectedDeliveryDays: controller.expectedDeliveryDays,
                      increment: () => debugPrint('incremenet'),
                      decrement: () => debugPrint('decrement'),
                    ),
                    const IuppDivider(
                      verticalPadding: 24,
                    ),
                    CheckoutCepArea(
                      shippingValue: controller.shippingValue,
                      onSearch: (value) => debugPrint(value),
                    ),
                    const IuppDivider(
                      verticalPadding: 18,
                    ),
                    const CheckoutSubtotalArea(
                      points: 2500,
                      total: 5999.20,
                    ),
                  ],
                ),
                IuppCheckoutButtonNavigate(
                  label: 'continuar',
                  onpressed: () => {},
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    '¹ Os pontos serão creditados em até 40 dias após a confirmação do pagamento.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7C7B8B),
                    ),
                  ),
                ),
                if (controller.expectedDeliveryDays != null)
                  const Padding(
                    padding: EdgeInsets.only(top: 4, left: 24, right: 24),
                    child: Text(
                      '² O prazo de entrega é iniciado no 1º dia útil após a confirmação do pagamento.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF7C7B8B),
                      ),
                    ),
                  ),
                const SizedBox(height: 24),
              ],
            ),
    );
  }
}
