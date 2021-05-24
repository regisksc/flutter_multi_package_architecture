import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';

void main() {
  test('equatable', () {
    // arrange
    const httpRequestParams = HttpRequestParams(
      httpMethod: HttpMethod.get,
      endpoint: '/teste',
      body: {},
      headers: {},
      queryParameters: {},
    );

    // assert
    expect(
        httpRequestParams ==
            // ignore: prefer_const_constructors
            HttpRequestParams(
              httpMethod: HttpMethod.get,
              endpoint: '/teste',
              body: const {},
              headers: const {},
              queryParameters: const {},
            ),
        true);
  });
}
