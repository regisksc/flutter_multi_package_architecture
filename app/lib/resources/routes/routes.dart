import 'package:iupp_checkout/presentation/checkout_presentation.dart';
import 'package:iupp_marketplace_buyer/pages/marketplace_buyer_presentation.dart';
//import 'package:iupp_marketplace_buyer/pages/product_details/product_details_page.dart';

abstract class Routes {
  static final pages = Pages.pages;
  static const initial = 'initial';
  static const home = '/home';
  static const registerPage = '/register-page';
  static const product = '/product';
  static const cart = '/carrinho';
}

abstract class Pages {
  static final pages = [
    MarketplaceBuyerPresentation(),
    CheckoutPresentation(),
  ];
}
