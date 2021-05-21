import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

class ProductActions extends StatelessWidget {
  const ProductActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: IuppElevatedButton(
            text: 'comprar',
            onPressed: () {},
            textPadding: const EdgeInsets.all(13),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 14),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: IuppOutlinedButton(
            text: 'adicionar ao carrinho',
            onPressed: () {},
            textPadding: const EdgeInsets.all(13),
            fontSize: 18,
            fontWeight: FontWeight.w700,
            borderRadius: 60,
          ),
        ),
        const SizedBox(height: 32),
        const IuppDivider(),
        const ListTile(
          title: Text(
            'Informações do produto',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          trailing: Icon(
            IuppIcons.icone_contorno_S_seta_direita,
            color: Color(0xFF0070D4),
          ),
        ),
        const IuppDivider(),
      ],
    );
  }
}
