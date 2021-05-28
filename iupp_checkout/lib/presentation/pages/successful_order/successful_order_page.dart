import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

import '../../presentation.dart';
import 'successful_order.dart';

class SuccessfulOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IuppAppBar(
        centered: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SuccessfulOrderHeader(),
            SuccessfulOrderDetails(),
            Padding(
              padding: const EdgeInsets.all(SizeConstants.pageSidePadding),
              child: Column(
                children: [
                  IuppElevatedButton(
                    text: 'continuar comprando',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 24),
                  const CheckoutDisclaimers(),
                ],
              ),
            ),
            const IuppSocialNetworks(),
            const IuppFooter(),
          ],
        ),
      ),
    );
  }
}
