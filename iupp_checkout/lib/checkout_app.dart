import 'package:iupp_core/core.dart';

import 'presentation/pages/pages.dart';
import 'presentation/resources/routes.dart';

class CheckoutApp implements MicroApp {
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
