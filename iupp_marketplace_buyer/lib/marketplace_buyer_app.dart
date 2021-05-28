import 'package:iupp_core/core.dart';

import 'domain/entity/entities.dart';
import 'presentation/pages/pages.dart';
import 'presentation/resources/resources.dart';

class MarketplaceBuyerApp extends MicroApp {
  @override
  String get microAppName => 'Marketplace Buyer App';

  @override
  String get initialRoute => '/showcase';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        SHOWCASE_PAGE: (_, args) => const ShowcasePage(),
        PRODUCT_PAGE: (_, args) =>
            ProductDetailsPage(args!.data as ProductEntity),
      };
}
