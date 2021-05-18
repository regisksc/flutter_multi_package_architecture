import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iupp_checkout/widgets/iupp_address_general_info.dart';
import 'package:iupp_components/iupp_components.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(
        centered: true,
        iuppActions: const [
          Icon(IuppIcons.icone_solidos_C_carrinho),
        ],
      ),
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
