import 'package:flutter/material.dart';
import 'package:iupp_components/iupp_components.dart';

class IuppAddressGeneralInfo extends StatelessWidget {
  const IuppAddressGeneralInfo({Key? key}) : super(key: key);

  final textStyle = const TextStyle(
    color: Color(0xFF7C7B8B),
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  IuppIcons.icone_contorno_S_seguranca_outline,
                  size: 16,
                  color: Color(0xFF7C7B8B),
                ),
                const SizedBox(width: 7),
                Text('Ambiente Seguro', style: textStyle),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text('|', style: textStyle),
                ),
                const Icon(
                  IuppIcons.icone_contorno_A_atendimento_telefonico,
                  size: 16,
                  color: Color(0xFF7C7B8B),
                ),
                const SizedBox(width: 7),
                Text('Telefones úteis', style: textStyle),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              '''Os produtos e preços poderão sofrer alterações durante a navegação, sem aviso prévio, devendo ser consultados no momento da conclusão da compra.''',
              style: textStyle,
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
