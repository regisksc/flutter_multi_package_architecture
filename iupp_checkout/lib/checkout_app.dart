import 'package:iupp_core/core.dart';

import 'presentation/presentation.dart';

class CheckoutApp extends MicroApp {
  @override
  String get microAppName => 'Checkout';

  @override
  String get initialRoute => Routes.cart.page;

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        Routes.registerPage.page: (_, args) => const AddressRegisterPage(),
        '/address-list': (_, args) => const AddressesListPage(),
        '/delivery-options': (_, args) => const DeliveryOptionsPage(),
        Routes.cart.page: (_, args) => const CartPage(),
        '/payment-method-selection': (_, args) =>
            const PaymentMethodSelectionPage(),
        '/installments-selection': (_, args) =>
            InstallmentSelectionPage(cardTitle: args!.data['card'] as String),
        '/successful-order': (_, args) => SuccessfulOrderPage(),
      };
}
