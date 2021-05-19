import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iupp_components/iupp_components.dart';
import 'package:iupp_core/core.dart';

import '../../widgets/iupp_checkout_scafold.dart';
import 'widgets/empty_cart/empty_cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IuppCheckoutScafold(
      children: [
        const EmptyCart(),
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 24),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            width: 312,
            height: 48,
            child: IuppElevatedButton(
              text: 'ir para o início',
              fontSize: 18,
              onPressed: () => NavigatorService().navigateTo('/home'),
            ),
          ),
        ),
      ],
    );
  }
}
