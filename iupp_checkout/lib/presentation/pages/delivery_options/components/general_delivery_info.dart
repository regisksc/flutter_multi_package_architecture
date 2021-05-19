import 'package:flutter/material.dart';

class GeneralDeliveryInfo extends StatelessWidget {
  const GeneralDeliveryInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Av. Brigadeiro Luís Antônio, 190 - Apto. 12 Bloco A -',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 2),
        Text(
          'São Paulo - SP - CEP 01318-002',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 2),
        Text(
          'Antônio Coutinho - (11) 99999-9999',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
