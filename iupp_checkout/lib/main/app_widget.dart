import 'package:flutter/material.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_components/styles/styles.dart';

import '../checkout_app.dart';

class AppWidget extends StatelessWidget {
  final checkoutApp = CheckoutApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Checkout module',
      theme: iuppTheme,
      navigatorKey: NavigatorService.navigatorKey,
      onGenerateRoute: checkoutApp.generateRoute,
      initialRoute: checkoutApp.initialRoute,
    );
  }
}
