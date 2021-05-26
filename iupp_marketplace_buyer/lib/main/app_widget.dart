import 'package:flutter/material.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_components/styles/themes/themes.dart';

import '../marketplace_buyer_app.dart';

class AppWidget extends StatelessWidget {
  final marketplaceBuyerApp = MarketplaceBuyerApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MarketplaceBuyer module',
      theme: iuppTheme,
      navigatorKey: NavigatorService.navigatorKey,
      onGenerateRoute: marketplaceBuyerApp.generateRoute,
      initialRoute: marketplaceBuyerApp.initialRoute,
    );
  }
}
