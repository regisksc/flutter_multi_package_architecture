import 'package:flutter/widgets.dart';

import '../../../core.dart';

class RoutingData {
  RoutingData(this.uri, this.params);

  final Uri uri;
  final Map<String, dynamic> params;
}

Route<dynamic> generateFadeRoute(
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

String prepareToRegex(String url) {
  final newUrl = <String>[];
  for (final part in url.split('/')) {
    final url = part.contains(':') ? '(.*?)' : part;
    newUrl.add(url);
  }

  return newUrl.join('/');
}

RoutingData? parseUrlParams(String routeNamed, Uri uri) {
  if (routeNamed.contains('/:')) {
    final regExp = RegExp('^${prepareToRegex(routeNamed)}\$');

    final r = regExp.firstMatch(uri.path);
    if (r != null) {
      final Map<String, String> params = {};
      final routeParts = routeNamed.split('/');
      final pathParts = uri.path.split('/');
      int paramPos = 0;

      String newRouteNamed = routeNamed;

      for (final routePart in routeParts) {
        if (routePart.contains(':')) {
          final paramName = routePart.replaceFirst(':', '');
          if (pathParts[paramPos].isNotEmpty) {
            params[paramName] = pathParts[paramPos];
            newRouteNamed =
                routeNamed.replaceFirst(routePart, params[paramName]!);
          }
        }
        paramPos++;
      }

      return RoutingData(uri.replace(path: newRouteNamed), params);
    }
  }

  return null;
}
