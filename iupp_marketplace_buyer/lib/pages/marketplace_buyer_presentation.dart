import 'package:iupp_core/core.dart';
import 'package:iupp_core/protocols/protocols.dart';
import 'package:iupp_marketplace_buyer/pages/home_page/home_page.dart';

import 'product_details/product_details_page.dart';

class MarketplaceBuyerPresentation implements MicroApp {
  @override
  String get microAppName => 'Marketplace Buyer App';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        '/home': (_, args) => const HomePage(),
        '/product': (_, args) => const ProductDetailsPage(),
      };
}
