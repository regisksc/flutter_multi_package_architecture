import 'package:app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_core/models/base_app.dart';
import 'package:iupp_core/models/microapp.dart';

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
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      onUnknownRoute: super.generateUnknownRoute,
      initialRoute: _initialRoute,
    );
  }

  String get _initialRoute => Routes.home;

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => Routes.pages;
}
