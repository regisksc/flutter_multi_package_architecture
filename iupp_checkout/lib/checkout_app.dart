import 'package:iupp_core/core.dart';

import 'presentation/presentation.dart';

class CheckoutApp extends MicroApp {
  @override
  String get microAppName => 'Checkout';

  @override
  String get initialRoute => CART_PAGE;

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        ADDRESS_REGISTER_PAGE: (_, args) => const AddressRegisterPage(),
        ADDRESS_LIST_PAGE: (_, args) => const AddressesListPage(),
        DELIVERY_OPTIONS_PAGE: (_, args) => const DeliveryOptionsPage(),
        CART_PAGE: (_, args) => const CartPage(),
        PAYMENT_METHOD_SELECTION_PAGE: (_, args) => const PaymentMethodSelectionPage(),
        INSTALLMENT_SELECTION_PAGE: (_, args) => InstallmentSelectionPage(cardTitle: args!.data['card'] as String),
        ORDER_REVIEW_PAGE: (_, args) => const OrderReviewPage(),
        SUCCESSFUL_ORDER_PAGE: (_, args) => SuccessfulOrderPage(),
      };
}
