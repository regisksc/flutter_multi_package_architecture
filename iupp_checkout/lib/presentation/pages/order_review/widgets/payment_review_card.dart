import 'package:flutter/material.dart';
import 'package:iupp_components/components/atoms/atoms.dart';
import 'package:iupp_components/components/components.dart';
import 'package:iupp_components/styles/styles.dart';

import '../../../presentation.dart';

class PaymentReviewCard extends StatelessWidget {
  const PaymentReviewCard(
      {Key? key,
      this.cardTitle = 'Mastercard - Final 3492',
      this.installmentDescription = '1x de R\$ 5.999,20 à vista'})
      : super(key: key);
  final String cardTitle;
  final String installmentDescription;

  @override
  Widget build(BuildContext context) {
    return CheckoutInformationCard(
      headerLabel: 'Pagamento',
      headerOnChange: () {},
      child: DefaultTextStyle(
        style: IuppFonts.description,
        textAlign: TextAlign.left,
        child: Column(
          children: [
            const IuppPageSpacer(height: SizeConstants.pageSidePadding / 3),
            Row(
              children: [
                IuppImage.asset('icon_mastercard.png'),
                const SizedBox(width: 16),
                Expanded(child: _paymentDescriptionText()),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container _paymentDescriptionText() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(cardTitle),
          const IuppPageSpacer(height: SizeConstants.pageSidePadding / 3),
          Text(installmentDescription, style: IuppFonts.descriptionBold),
        ],
      ),
    );
  }
}
