import 'package:iupp_checkout/pages/cart/cart_page.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_core/protocols/protocols.dart';

import 'pages/address_register/address_register_page.dart';

class CheckoutPresentation implements MicroApp {
  @override
  String get microAppName => 'app_example';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        '/register-page': (_, args) => const AddressRegisterPage(),
        '/carrinho': (_, args) => const CartPage(),
      };
}
