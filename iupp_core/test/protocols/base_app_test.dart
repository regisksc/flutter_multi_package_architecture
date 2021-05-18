import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/navigator/arguments.dart';

import 'utils.dart';

void main() {
  late TestApp testApp;

  setUp(() {
    testApp = TestApp();
    testApp.registerRouters();
  });

  group('BaseApp', () {
    test('should register the base routes correctly', () {
      expect(testApp.baseRoutes.containsKey('/base'), true);
      expect(testApp.routes.containsKey('/base'), true);
    });

    test('should contain the micro app routes when they are registered', () {
      expect(testApp.routes.containsKey('/base-micro'), true);
    });

    test(
        'should contain the micro app routes with wildcard when they are registered',
        () {
      expect(testApp.routes.containsKey('/base-micro/:id'), true);
    });

    group('generateRoute', () {
      test('should find the route on commom case', () {
        final route = generateRouteFromUrl(testApp, url: '/base');

        expect(route, isNotNull);
      });

      test('should find the route with arguments', () {
        final route = generateRouteFromUrl(
          testApp,
          url: '/base',
          arguments: Arguments(
            data: 5,
            params: {
              'param1': 1,
              'param2': 1,
            },
          ),
        );

        expect(route, isNotNull);
        expect(route!.settings.arguments, isNotNull);
      });

      test('should find the route on wildcard case', () {
        final route = generateRouteFromUrl(testApp, url: '/base-micro/1');

        expect(route, isNotNull);
      });

      test('should not find the route on invalid url', () {
        final route = generateRouteFromUrl(testApp, url: '/non-existent');

        expect(route, isNull);
      });
    });
  });
}
