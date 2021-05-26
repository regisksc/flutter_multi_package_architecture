import '../../../core.dart';

abstract class MicroApp {
  String get microAppName;
  String get initialRoute;
  Map<String, WidgetBuilderArgs> get routes;

  Route<dynamic>? generateRoute(RouteSettings settings) {
    final Uri uri = Uri.parse(settings.name!);
    final String routerName = uri.path;

    final Arguments routerArgs = settings.arguments != null
        ? (settings.arguments! as Arguments)
        : Arguments(uri: uri, params: uri.queryParameters);

    final navigateTo = routes[routerName];

    if (navigateTo == null) {
      Route<dynamic>? dynamicRoute;
      routes.forEach((key, value) {
        final result = parseUrlParams(key, uri);
        if (result != null) {
          final Map<String, dynamic> combinedArgs = {};
          combinedArgs.addAll(result.params);
          combinedArgs.addAll(routerArgs.params);

          dynamicRoute = generateFadeRoute(
            value,
            Uri(path: uri.path, queryParameters: routerArgs.params).toString(),
            Arguments(params: combinedArgs, uri: result.uri),
          );
          return;
        }
      });

      if (dynamicRoute != null) return dynamicRoute!;
      return null;
    }

    final path = routerArgs.uri?.toString() ?? routerName;

    return generateFadeRoute(navigateTo, path, routerArgs);
  }
}
