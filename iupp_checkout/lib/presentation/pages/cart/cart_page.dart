import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iupp_components/components/components.dart';

import '../../widgets/widgets.dart';
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
    controller.getCart();
    controller.cartNotifier.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  bool get isEmpty => controller.isEmpty;

  @override
  Widget build(BuildContext context) {
    final cart = controller.cartState;
    return CheckoutScaffold(
      title: 'carrinho',
      whiteSpace: 1,
      child: isEmpty
          ? const CheckoutEmptyCart()
          : Column(
              children: [
                IuppCard(
                  children: [
                    ...cart!.items
                        .map((itemCart) => CheckoutItemCart(
                              photoUrl: itemCart.photoUrl,
                              description: itemCart.description,
                              sellerName: itemCart.seller.name,
                              price: itemCart.total,
                              points: itemCart.points.toString(),
                              count: itemCart.quantity,
                              expectedDeliveryDays:
                                  controller.expectedDeliveryDays,
                              increment: () =>
                                  controller.incrementItem(itemCart.id),
                              decrement: () {
                                if (itemCart.quantity == 1) {
                                  showIuppOverlayBottomSheet(
                                    context,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                            'Deseja realmente excluir este produto do seu carrinho?'),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              top: 24, bottom: 12),
                                          width: double.maxFinite,
                                          child: IuppElevatedButton(
                                            text: 'excluir produto',
                                            onPressed: () {
                                              controller
                                                  .decrementItem(itemCart.id);
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: IuppOutlinedButton(
                                            text: 'manter no carrinho',
                                            onPressed: () =>
                                                Navigator.of(context).pop(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                } else {
                                  controller.decrementItem(itemCart.id);
                                }
                              },
                            ))
                        .toList(),
                    const IuppDivider(verticalPadding: 24),
                    CheckoutCepArea(
                      shippingValue: controller.shippingValue,
                      onSearch: (value) => controller.calcShippingValue(value),
                    ),
                    const IuppDivider(verticalPadding: 18),
                    CheckoutSubtotalArea(
                      points: cart.totalPoints,
                      total: cart.subtotal,
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
