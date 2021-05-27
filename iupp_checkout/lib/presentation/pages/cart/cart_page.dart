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
    return CheckoutScaffold(
      title: 'carrinho',
      child: isEmpty
          ? const CheckoutEmptyCart()
          : CheckoutCartView(
              cart: cart!,
              calcShippingValue: (value) => controller.calcShippingValue(value),
              incrementItem: (itemId) => controller.incrementItem(itemId),
              decrementItem: (itemId) => controller.decrementItem(itemId),
            ),
    );
  }
}
