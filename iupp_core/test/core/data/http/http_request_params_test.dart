import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';

import '../../../utils/constants/data_type_test_constants.dart';

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

  group('Http method string getter -', () {
    late Map<String, String> headers;
    late Map<String, dynamic> queryParameters;
    late Map<String, dynamic> body;
    setUp(() {
      headers = anyMap;
      queryParameters = anyMap;
      body = anyMap;
    });
    HttpRequestParams mockHttpParams(HttpMethod method) => HttpRequestParams(
          httpMethod: method,
          endpoint: faker.internet.httpsUrl(),
          body: body,
          headers: headers,
          queryParameters: queryParameters,
        );

    test(
      'should return the correct get http method string',
      () async {
        // arrange
        final httpParams = mockHttpParams(HttpMethod.get);

        // assert
        expect(httpParams.method, 'get');
      },
    );

    test(
      'should return the correct post http method string',
      () async {
        // arrange
        final httpParams = mockHttpParams(HttpMethod.post);

        // assert
        expect(httpParams.method, 'post');
      },
    );

    test(
      'should return the correct delete http method string',
      () async {
        // arrange
        final httpParams = mockHttpParams(HttpMethod.delete);

        // assert
        expect(httpParams.method, 'delete');
      },
    );

    test(
      'should return the correct put http method string',
      () async {
        // arrange
        final httpParams = mockHttpParams(HttpMethod.put);

        // assert
        expect(httpParams.method, 'put');
      },
    );
    test(
      'should return the correct patch http method string',
      () async {
        // arrange
        final httpParams = mockHttpParams(HttpMethod.patch);

        // assert
        expect(httpParams.method, 'patch');
      },
    );
  });
}
