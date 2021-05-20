import 'package:iupp_core/core.dart';
import 'package:iupp_marketplace_buyer/presentation/pages/pages.dart';

class MarketplaceBuyerApp implements MicroApp {
  @override
  String get microAppName => 'Marketplace Buyer App';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        '/home': (_, args) => const HomePage(),
        '/product': (_, args) => const ProductDetailsPage(),
      };
}