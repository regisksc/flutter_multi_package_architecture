import 'package:flutter/foundation.dart';
import 'package:iupp_core/core.dart';

import 'arguments.dart';

class NavigatorService {
  Future<dynamic> navigateTo(
    String routeName, {
    Map<String, dynamic>? queryParams,
    dynamic data,
  }) {
    Uri uri = Uri(path: routeName);
    if (queryParams != null) {
      uri = Uri(path: routeName, queryParameters: queryParams);
    }

    debugPrint(
        '[NavigatorService] queryParameters: ${uri.queryParameters} path: ${uri.path}');

    return navigatorKey.currentState!.pushNamed(
      routeName,
      arguments: Arguments().copyWith(
        params: queryParams,
        uri: uri,
        data: data,
      ),
    );
  }

  void goBack() {
    if (navigatorKey.currentState!.canPop()) {
      navigatorKey.currentState!.pop();
    } else {
      debugPrint('redirect');
      navigateTo('/home');
    }
  }
}
