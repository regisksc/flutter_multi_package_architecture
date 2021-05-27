import 'package:iupp_core/core.dart';
import 'presentation/pages/pages.dart';

class MarketplaceBuyerApp extends MicroApp {
  @override
  String get microAppName => 'Marketplace Buyer App';

  @override
  String get initialRoute => '/showcase';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        '/showcase': (_, args) => const ShowcasePage(),
        '/product': (_, args) => const ProductDetailsPage(),
      };
}
