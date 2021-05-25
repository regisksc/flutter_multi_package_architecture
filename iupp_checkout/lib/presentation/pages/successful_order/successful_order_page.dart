import 'package:flutter/material.dart';
import 'package:iupp_checkout/presentation/pages/successful_order/widgets/successful_order_detail.dart';
import 'package:iupp_checkout/presentation/pages/successful_order/widgets/successful_order_header.dart';
import 'package:iupp_components/components/components.dart';

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
            const IuppFooter(),
          ],
        ),
      ),
    );
  }
}
