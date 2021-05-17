import 'package:flutter/material.dart';

class UsefulLinks extends StatelessWidget {
  const UsefulLinks({Key? key}) : super(key: key);

  final textStyle = const TextStyle(
    fontSize: 14,
    color: Color(0xFFE1E4EC),
    fontWeight: FontWeight.w700,
  );

  final defaultSpacing = const SizedBox(height: 24);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sobre o iupp', style: textStyle),
              defaultSpacing,
              Text('Minha conta', style: textStyle),
              defaultSpacing,
              Text('Meus pedidos', style: textStyle),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Fale com a gente', style: textStyle),
              defaultSpacing,
              Text('Dúvidas frequentes', style: textStyle),
              defaultSpacing,
              Text('Telefones úteis', style: textStyle),
            ],
          ),
        ],
      ),
    );
  }
}
