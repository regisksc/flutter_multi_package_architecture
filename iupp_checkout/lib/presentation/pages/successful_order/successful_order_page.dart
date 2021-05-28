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
            const CheckoutDisclaimers(),
            const IuppSocialNetworks(),
            const IuppFooter(),
          ],
        ),
      ),
    );
  }
}
