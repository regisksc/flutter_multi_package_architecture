import 'package:flutter/material.dart';
import 'package:iupp_checkout/checkout_app.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_components/styles/styles.dart';
import 'package:iupp_marketplace_buyer/marketplace_buyer_app.dart';

class IuppApp extends StatelessWidget with BaseApp {
  IuppApp() {
    super.registerRouters();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iupp app',
      theme: iuppTheme,
      navigatorKey: NavigatorService.navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: _initialRoute,
    );
  }

  String get _initialRoute => '/showcase';

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [
        MarketplaceBuyerApp(),
        CheckoutApp(),
      ];
}
