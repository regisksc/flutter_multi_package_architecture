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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 80,
            child: Text(
              'carrinho',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF353545),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Spacer(),
          IuppAddressGeneralInfo(),
        ],
      ),
    );
  }
}
