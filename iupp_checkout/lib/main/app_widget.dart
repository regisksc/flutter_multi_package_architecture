import 'package:flutter/material.dart';
import 'package:iupp_core/core.dart';

import '../checkout_app.dart';
import 'theme.dart';

class AppWidget extends StatelessWidget {
  final checkoutApp = CheckoutApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Checkout module',
      theme: theme,
      navigatorKey: NavigatorService.navigatorKey,
      onGenerateRoute: checkoutApp.generateRoute,
      initialRoute: checkoutApp.initialRoute,
    );
  }
}
