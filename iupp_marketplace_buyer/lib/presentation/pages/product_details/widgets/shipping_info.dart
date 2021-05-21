import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

class ShippingInfo extends StatelessWidget {
  const ShippingInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        IuppDivider(),
        ListTile(
          leading: Icon(
            IuppIcons.icone_contorno_A_agencia_outline,
            color: Colors.black,
          ),
          title: Text.rich(
            TextSpan(
              text: 'Calcule ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: 'frete ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: 'e ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'prazo',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          trailing: Icon(
            IuppIcons.icone_contorno_S_seta_direita,
            color: Color(0xFF0070D4),
          ),
        ),
      ],
    );
  }
}
