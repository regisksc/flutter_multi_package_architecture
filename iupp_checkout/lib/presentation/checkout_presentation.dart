import 'package:iupp_core/core.dart';
import 'package:iupp_core/protocols/protocols.dart';

import 'pages/delivery_options/delivery_options_page.dart';
import 'pages/pages.dart';
import 'resources/routes.dart';

class CheckoutPresentation implements MicroApp {
  @override
  String get microAppName => 'Checkout';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        Routes.registerPage.page: (_, args) => const AddressRegisterPage(),
        '/address-list': (_, args) => const AddressesListPage(),
        '/delivery-options': (_, args) => const DeliveryOptionsPage(),
        Routes.cart.page: (_, args) => const CartPage(),
      };
}
