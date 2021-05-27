import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core.dart';

import '../../resources/resources.dart';
import '../../widgets/widgets.dart';

final cards = [
  'Mastercard - Final 3492',
  'Mastercard - Final 3166',
  'Mastercard - Final 3072',
];

class PaymentMethodSelectionPage extends StatelessWidget {
  const PaymentMethodSelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckoutScaffold(
      title: 'como deseja pagar?',
      aboveTitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Total',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'R\$ 5.999,20 à vista',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      appBar: CheckoutAddressAppBar(
        step: 3,
      ),
      child: IuppCard(
          children: cards
              .map((cardDescription) => _cardPlaceholder(cardDescription))
              .toList()),
    );
  }

  GestureDetector _cardPlaceholder(String cardDescription) {
    return GestureDetector(
      onTap: () => NavigatorService().navigateTo(
        INSTALLMENT_SELECTION_PAGE,
        data: {
          'card': cardDescription,
        },
      ),
      child: ListTile(
        leading: IuppImage.asset('icon_mastercard.png'),
        title: Text(cardDescription),
        trailing: const Icon(
          IuppIcons.icone_contorno_S_seta_direita,
          color: Color(0xFF0070D4),
        ),
      ),
    );
  }
}
