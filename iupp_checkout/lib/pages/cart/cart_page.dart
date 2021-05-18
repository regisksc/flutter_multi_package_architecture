import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iupp_checkout/widgets/iupp_address_app_bar.dart';
import 'package:iupp_checkout/widgets/iupp_address_general_info.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: IuppAddressAppBar(),
      body: Column(
        children: [
          Container(),
          const Spacer(),
          const IuppAddressGeneralInfo(),
        ],
      ),
    );
  }
}
