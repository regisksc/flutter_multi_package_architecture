import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iupp_checkout/widgets/iupp_checkout_scafold.dart';
import 'package:iupp_components/buttons/buttons.dart';
import 'package:iupp_core/navigator/navigator_service.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IuppCheckoutScafold(
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
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 24),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            width: 312,
            height: 48,
            child: IElevatedButton(
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
