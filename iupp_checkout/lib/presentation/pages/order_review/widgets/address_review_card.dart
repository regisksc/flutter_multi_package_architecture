import 'package:flutter/material.dart';
import 'package:iupp_components/styles/styles.dart';

import '../../../presentation.dart';

class AddressReviewCard extends StatelessWidget {
  const AddressReviewCard({
    Key? key,
    this.street = 'Av. Brigadeiro Luís Antônio, 190 - Apto. 12 Bloco A',
    this.city = 'São Paulo - SP',
    this.cep = 'CEP 01318-002 Antônio Coutinho',
    this.name = 'Antônio Coutinho',
    this.telephone = '(11) 99999-9999',
  }) : super(key: key);

  final String street;
  final String city;
  final String cep;
  final String name;
  final String telephone;

  @override
  Widget build(BuildContext context) {
    return CheckoutInformationCard(
      headerLabel: 'Endereço de entrega',
      headerOnChange: () {},
      child: DefaultTextStyle(
        style: IuppFonts.description.copyWith(height: 1.6),
        textAlign: TextAlign.left,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(street),
            Text('$city - $cep'),
            Text('$name - $telephone'),
          ],
        ),
      ),
    );
  }
}
