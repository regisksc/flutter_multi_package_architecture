import 'package:flutter/widgets.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_core/pages/page_not_found.dart';
import 'package:iupp_core/transition/fade_route.dart';

import 'microapp.dart';

abstract class BaseApp {
  List<MicroApp> get microApps;

  Map<String, WidgetBuilderArgs> get baseRoutes;

  final Map<String, WidgetBuilderArgs> routes = {};

  void registerRouters() {
    if (baseRoutes.isNotEmpty) routes.addAll(baseRoutes);
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

    debugPrint('[RouteSettings] settings $settings');

    final navigateTo = routes[routerName];

    if (navigateTo == null) {
      Route<dynamic>? dynamicRoute;
      routes.forEach((key, value) {
        final result = _parseUrlParams(key, uri);
        if (result != null) {
          final Map<String, dynamic> combinedArgs = {};
          combinedArgs.addAll(result.params);
          combinedArgs.addAll(routerArgs.params);

          dynamicRoute = _generateRoute(
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

    return _generateRoute(navigateTo, path, routerArgs);
  }

  Route<dynamic> _generateRoute(
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

  Route<dynamic>? generateUnknownRoute(RouteSettings settings) {
    return FadeRoute(
      child: (context, args) => const PageNotFound(),
      path: '/404',
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

      debugPrint('Match! Processing $r as $routeNamed');
      String teste = routeNamed;

      for (final routePart in routeParts) {
        debugPrint('routePart: $routePart');
        if (routePart.contains(":")) {
          final paramName = routePart.replaceFirst(':', '');
          if (pathParts[paramPos].isNotEmpty) {
            params[paramName] = pathParts[paramPos];
            teste = routeNamed.replaceFirst(routePart, params[paramName]!);
            debugPrint('paramName $paramName, paramsMap $params');
          }
        }
        paramPos++;
      }

      return RoutingData(uri.replace(path: teste), params);
    }
  }

  return null;
}

class RoutingData {
  RoutingData(this.uri, this.params);
  final Uri uri;
  final Map<String, dynamic> params;
}
