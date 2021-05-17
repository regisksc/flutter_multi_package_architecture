import 'package:flutter/material.dart';

class InstitutionalInfo extends StatelessWidget {
  const InstitutionalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color(0xFFE1E4EC),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Banco Itaucard S.A.',
          style: textStyle,
        ),
        Text(
          'CNPJ/MF sob o nº 17.192.451/0001-70',
          style: textStyle,
        ),
        Text(
          '''Praça Alfredo Egydio de Souza Aranha, 100, Torre Olavo Setubal, 7º andar - Parque Jabaquara - São Paulo - SP''',
          style: textStyle,
        ),
      ],
    );
  }
}
