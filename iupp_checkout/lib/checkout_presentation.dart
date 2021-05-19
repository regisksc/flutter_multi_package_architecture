import 'package:iupp_checkout/pages/pages.dart';
import 'package:iupp_checkout/resources/resources.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_core/protocols/protocols.dart';

class CheckoutPresentation implements MicroApp {
  @override
  String get microAppName => 'Checkout';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        Routes.registerPage.page: (_, args) => const AddressRegisterPage(),
        '/address-list': (_, args) => const AddressesListPage(),
        Routes.cart.page: (_, args) => const CartPage(),
      };
}
