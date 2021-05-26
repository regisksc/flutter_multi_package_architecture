import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/widgets.dart';
import 'cart_controller.dart';
import 'widgets/checkout_cart_view.dart';
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
    return Scaffold(
        body: LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight,
          ),
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CheckoutTitle(title: 'carrinho'),
                  if (isEmpty)
                    const CheckoutEmptyCart()
                  else
                    CheckoutCartView(
                      cart: cart!,
                      calcShippingValue: (value) =>
                          controller.calcShippingValue(value),
                      incrementItem: (itemId) =>
                          controller.incrementItem(itemId),
                      decrementItem: (itemId) =>
                          controller.decrementItem(itemId),
                    ),
                  const Spacer(),
                  const CheckoutFooterText(),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }

  /* @override
  Widget build(BuildContext context) {
    final cart = controller.cartState;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: isEmpty
            ? const CheckoutEmptyCart()
            : CheckoutCartView(
                cart: cart!,
                calcShippingValue: (value) =>
                    controller.calcShippingValue(value),
                incrementItem: (itemId) => controller.incrementItem(itemId),
                decrementItem: (itemId) => controller.decrementItem(itemId),
              ),
      ),
    );
  } */
}
