import 'package:flutter/material.dart';
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
