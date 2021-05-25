import 'package:flutter/material.dart';
import 'package:iupp_checkout/checkout_app.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_marketplace_buyer/marketplace_buyer_app.dart';

import '../resources/resources.dart';
import 'theme.dart';

class IuppApp extends StatelessWidget with BaseApp {
  IuppApp() {
    super.registerRouters();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iupp app',
      theme: theme,
      navigatorKey: NavigatorService.navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/successful-order',
    );
  }

  String get _initialRoute => Routes.cart;

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [
        MarketplaceBuyerApp(),
        CheckoutApp(),
      ];
}
