import 'package:flutter/material.dart';

class ProductsInfo extends StatelessWidget {
  const ProductsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '''O catálogo é atualizado periódica e automaticamente pelos parceiros, e os produtos e preços poderão sofrer alterações durante a navegação, sem aviso prévio, devendo ser consultados pelo interessado no momento da conclusão efetiva do resgate.''',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xFFE1E4EC),
      ),
    );
  }
}
