import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

class CheckoutFooterText extends StatelessWidget {
  const CheckoutFooterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Color(0xFF7C7B8B),
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
    return Padding(
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
              const Text('Ambiente Seguro', style: textStyle),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('|', style: textStyle),
              ),
              const Icon(
                IuppIcons.icone_contorno_A_atendimento_telefonico,
                size: 16,
                color: Color(0xFF7C7B8B),
              ),
              const SizedBox(width: 7),
              Text(
                'Telefones úteis',
                style: textStyle.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            '''Os produtos e preços poderão sofrer alterações durante a navegação, sem aviso prévio, devendo ser consultados no momento da conclusão da compra.''',
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
