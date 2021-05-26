import 'package:flutter/material.dart';
import 'package:iupp_core/core.dart';

import '../marketplace_buyer_app.dart';
import 'theme.dart';

class AppWidget extends StatelessWidget {
  final marketplaceBuyerApp = MarketplaceBuyerApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MarketplaceBuyer module',
      theme: theme,
      navigatorKey: NavigatorService.navigatorKey,
      onGenerateRoute: marketplaceBuyerApp.generateRoute,
      initialRoute: marketplaceBuyerApp.initialRoute,
    );
  }
}
