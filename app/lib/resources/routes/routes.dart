import 'package:iupp_checkout/checkout_presentation.dart';
import 'package:iupp_marketplace_buyer/pages/marketplace_buyer_presentation.dart';
//import 'package:iupp_marketplace_buyer/pages/product_details/product_details_page.dart';

abstract class Routes {
  static final pages = Pages.pages;
  static const initial = 'initial';
  static const home = '/home';
  static const registerPage = '/register-page';
  static const product = '/product';
}

abstract class Pages {
  static final pages = [
    MarketplaceBuyerPresentation(),
    CheckoutPresentation(),
  ];
}


/* abstract class Pages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => Container(color: Colors.red),
    ),
    GetPage(
      name: Routes.home,
      page: () => const AddressRegisterPage(),
      // bindings: HomeBindings(),
      // middlewares: middlewares,
      // settings: RouteSettings(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: Duration(milliseconds: 1400),
    ),
  ];
} */