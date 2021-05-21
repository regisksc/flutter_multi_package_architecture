import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

class PaymentInfo extends StatelessWidget {
  const PaymentInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        IuppDivider(),
        ListTile(
          leading: Icon(
            IuppIcons.icone_contorno_C_cartao_outline,
            color: Colors.black,
          ),
          title: Text.rich(
            TextSpan(
              text: 'Em até ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: '12x de R\$ 541,58 ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: 'sem juros',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
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
