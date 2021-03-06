import 'package:flutter/foundation.dart';

import '../../../core.dart';
import 'arguments.dart';

class NavigatorService {
  static final navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get navigatorState => navigatorKey.currentState!;

  Future<dynamic> navigateTo(
    String routeName, {
    Map<String, dynamic>? queryParams,
    dynamic data,
  }) {
    Uri uri = Uri(path: routeName);
    if (queryParams != null) {
      uri = Uri(path: routeName, queryParameters: queryParams);
    }

    debugPrint('[NavigatorService] queryParameters: ${uri.queryParameters} path: ${uri.path}');

    return navigatorState.pushNamed(
      routeName,
      arguments: const Arguments().copyWith(
        params: queryParams,
        uri: uri,
        data: data,
      ),
    );
  }

  void goBack() {
    if (navigatorState.canPop()) {
      navigatorKey.currentState!.pop();
    } else {
      debugPrint('redirect');
      navigateTo('/home');
    }
  }
}
