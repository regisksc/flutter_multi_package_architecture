import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

import '../../presentation.dart';
import 'widgets/widgets.dart';

class OrderReviewPage extends StatelessWidget {
  const OrderReviewPage({Key? key, this.amountOfProducts = 1}) : super(key: key);
  final int amountOfProducts;

  @override
  Widget build(BuildContext context) {
    return CheckoutScaffold(
      appBar: CheckoutAddressAppBar(step: 4),
      title: 'revise seu pedido',
      child: Column(
        children: [
          const OrderReviewSummary(),
          const IuppPageSpacer(),
          _concludeOrderButton(),
          const IuppPageSpacer(),
          ProductReviewCard(amountOfProducts: amountOfProducts),
          const IuppPageSpacer(height: SizeConstants.pageSidePadding / 3),
          AddressReviewCard(),
          const IuppPageSpacer(height: SizeConstants.pageSidePadding / 3),
          PaymentReviewCard(),
          const IuppPageSpacer(height: SizeConstants.pageSidePadding / 3),
          _concludeOrderButton(),
          const IuppPageSpacer(),
        ],
      ),
    );
  }

  Padding _concludeOrderButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SizeConstants.pageSidePadding),
      child: IuppElevatedButton(
        text: 'concluir pedido',
        onPressed: () {},
      ),
    );
  }
}