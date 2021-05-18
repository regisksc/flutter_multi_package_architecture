import 'package:iupp_checkout/pages/cart/cart_page.dart';
import 'package:iupp_checkout/resources/resources.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_core/protocols/protocols.dart';

import 'pages/address_register/address_register_page.dart';

class CheckoutPresentation implements MicroApp {
  @override
  String get microAppName => 'Checkout';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        Routes.registerPage.page: (_, args) => const AddressRegisterPage(),
        Routes.cart.page: (_, args) => const CartPage(),
      };
}
