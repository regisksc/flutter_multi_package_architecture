import 'package:flutter/material.dart';
import 'package:iupp_checkout/presentation/widgets/widgets.dart';
import 'package:iupp_components/components/molecules/cards/cards.dart';

import 'package:iupp_core/core.dart';

class CheckoutEmptyCart extends StatelessWidget {
  const CheckoutEmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: double.maxFinite,
          child: IuppCard(
            children: [
              Text(
                "Seu carrinho está vazio",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Vá para o início e veja outras ofertas",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff494C57)),
              ),
            ],
          ),
        ),
        IuppCheckoutButtonNavigate(
          label: 'ir para o início',
          onpressed: () => NavigatorService().navigateTo('/home'),
        ),
        const SizedBox(height: 75)
      ],
    );
  }
}
