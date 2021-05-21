import 'package:flutter/material.dart';
import 'package:iupp_checkout/presentation/pages/cart/widgets/checkout_button_navigate_widget.dart/checkout_button_navigate_widget.dart';
import 'package:iupp_components/iupp_components.dart';
import 'package:iupp_core/core.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 106,
          width: double.maxFinite,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Seu carrinho está vazio",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Vá para o início e veja outras ofertas",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
        CheckoutButtonNavigateWidget(
          label: 'ir para o início',
          onpressed: () => NavigatorService().navigateTo('/home'),
        ),
      ],
    );
  }
}
