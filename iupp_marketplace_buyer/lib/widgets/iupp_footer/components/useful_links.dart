import 'package:flutter/material.dart';

class UsefulLinks extends StatelessWidget {
  const UsefulLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 14,
      color: Color(0xFFE1E4EC),
      fontWeight: FontWeight.w700,
    );
    const defaultSpacing = SizedBox(height: 24);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Sobre o iupp', style: textStyle),
            defaultSpacing,
            Text('Minha conta', style: textStyle),
            defaultSpacing,
            Text('Meus pedidos', style: textStyle),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Fale com a gente', style: textStyle),
            defaultSpacing,
            Text('Dúvidas frequentes', style: textStyle),
            defaultSpacing,
            Text('Telefones úteis', style: textStyle),
          ],
        ),
      ],
    );
  }
}
