import '../../core.dart';
import '../dependencies/flutter_dependencies.dart';

abstract class BaseApp {
  List<MicroApp> get microApps;

  Map<String, WidgetBuilderArgs> get baseRoutes;

  final Map<String, WidgetBuilderArgs> routes = {};

  void registerRouters() {
    if (baseRoutes.isNotEmpty) {
      routes.addAll(baseRoutes);
    }
    if (microApps.isNotEmpty) {
      for (final MicroApp microapp in microApps) {
        routes.addAll(microapp.routes);
      }
    }
  }

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
        final result = _parseUrlParams(key, uri);
        if (result != null) {
          final Map<String, dynamic> combinedArgs = {};
          combinedArgs.addAll(result.params);
          combinedArgs.addAll(routerArgs.params);

          dynamicRoute = _generateFadeRoute(
            value,
            Uri(path: uri.path, queryParameters: routerArgs.params).toString(),
            Arguments(params: combinedArgs, uri: result.uri),
          );
          return;
        }
      });

      if (dynamicRoute != null) {
        return dynamicRoute!;
      }
      return null;
    }

    final path = routerArgs.uri?.toString() ?? routerName;

    return _generateFadeRoute(navigateTo, path, routerArgs);
  }

  Route<dynamic> _generateFadeRoute(
    WidgetBuilderArgs navigateTo,
    String path,
    Arguments? routerArgs,
  ) {
    return FadeRoute(
      child: navigateTo,
      path: path,
      routerArgs: routerArgs,
    );
  }
}

String prepareToRegex(String url) {
  final newUrl = <String>[];
  for (final part in url.split('/')) {
    final url = part.contains(":") ? "(.*?)" : part;
    newUrl.add(url);
  }

  return newUrl.join("/");
}

RoutingData? _parseUrlParams(String routeNamed, Uri uri) {
  if (routeNamed.contains('/:')) {
    final regExp = RegExp("^${prepareToRegex(routeNamed)}\$");

    final r = regExp.firstMatch(uri.path);
    if (r != null) {
      final Map<String, String> params = {};
      final routeParts = routeNamed.split('/');
      final pathParts = uri.path.split('/');
      int paramPos = 0;

      String newRouteNamed = routeNamed;

      for (final routePart in routeParts) {
        if (routePart.contains(":")) {
          final paramName = routePart.replaceFirst(':', '');
          if (pathParts[paramPos].isNotEmpty) {
            params[paramName] = pathParts[paramPos];
            newRouteNamed = routeNamed.replaceFirst(routePart, params[paramName]!);
          }
        }
        paramPos++;
      }

      return RoutingData(uri.replace(path: newRouteNamed), params);
    }
  }

  return null;
}

class RoutingData {
  RoutingData(this.uri, this.params);

  final Uri uri;
  final Map<String, dynamic> params;
}
