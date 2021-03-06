import 'package:iupp_core/core.dart';
import 'package:iupp_core/core/dependencies/flutter_dependencies.dart';

class TestApp extends BaseApp {
  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {
        '/base': (context, args) => Container(),
      };

  @override
  List<MicroApp> get microApps => [
        TestMicroApp(),
      ];
}

class TestMicroApp extends MicroApp {
  @override
  String get microAppName => 'test-micro-app';

  @override
  String get initialRoute => '/base-micro';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        '/base-micro': (context, args) => Container(),
        '/base-micro/:id': (context, args) => Container(),
      };
}

Route<dynamic>? generateRouteFromUrl(
  BaseApp testApp, {
  required String url,
  Arguments? arguments,
}) =>
    testApp.generateRoute(RouteSettings(name: url, arguments: arguments));
