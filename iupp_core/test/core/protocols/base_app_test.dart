import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';

import 'utils.dart';

void main() {
  late TestApp testApp;

  setUp(() {
    // arrange
    testApp = TestApp();

    // act
    testApp.registerRouters();
  });

  group('BaseApp', () {
    test('should register the base routes correctly', () {
      // assert
      expect(testApp.baseRoutes.containsKey('/base'), true);
      expect(testApp.routes.containsKey('/base'), true);
    });

    test('should contain the micro app routes when they are registered', () {
      // assert
      expect(testApp.routes.containsKey('/base-micro'), true);
    });

    test('should contain the micro app routes with wildcard when they are registered', () {
      // assert
      expect(testApp.routes.containsKey('/base-micro/:id'), true);
    });

    group('generateRoute', () {
      test('should find the route on commom case', () {
        // act
        final route = generateRouteFromUrl(testApp, url: '/base');

        // assert
        expect(route, isNotNull);
      });

      test('should find the route with arguments', () {
        // act
        final route = generateRouteFromUrl(
          testApp,
          url: '/base',
          arguments: const Arguments(
            data: 5,
            params: {
              'param1': 1,
              'param2': 1,
            },
          ),
        );

        // assert
        expect(route, isNotNull);
        expect(route!.settings.arguments, isNotNull);
      });

      test('should find the route on wildcard case', () {
        // act
        final route = generateRouteFromUrl(testApp, url: '/base-micro/1');

        // assert
        expect(route, isNotNull);
      });

      test('should not find the route on invalid url', () {
        // act
        final route = generateRouteFromUrl(testApp, url: '/non-existent');

        // assert
        expect(route, isNull);
      });
    });
  });
}
