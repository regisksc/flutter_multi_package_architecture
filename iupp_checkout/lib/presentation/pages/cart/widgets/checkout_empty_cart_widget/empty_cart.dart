import 'package:flutter/material.dart';
import 'package:iupp_checkout/presentation/widgets/widgets.dart';
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
        IuppCheckoutButtonNavigate(
          label: 'ir para o início',
          onpressed: () => NavigatorService().navigateTo('/home'),
        ),
        // TODO: ver com Toni
        SizedBox(
          height: MediaQuery.of(context).size.height - 64 - 86 - 106 - 16 - 60 - 160,
        ),
      ],
    );
  }
}
