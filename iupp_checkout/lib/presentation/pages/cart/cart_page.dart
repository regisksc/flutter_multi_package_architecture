import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iupp_checkout/presentation/pages/cart/cart_controller.dart';
import 'package:iupp_checkout/presentation/widgets/iupp_checkout_scafold.dart';
import 'package:iupp_components/iupp_components.dart';
import 'package:iupp_core/navigator/navigator_service.dart';

import 'widgets/empty_cart/empty_cart.dart';

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

  @override
  Widget build(BuildContext context) {
    return IuppCheckoutScafold(
      children: [
        if (controller.isEmpty) const EmptyCart() else Container(),
      ],
    );
  }
}
