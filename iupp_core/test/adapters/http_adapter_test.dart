import 'package:dio/dio.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_core/data/http/http_response.dart';
import 'package:iupp_core/error/http_failures.dart';
import 'package:mocktail/mocktail.dart';

class ClientMock extends Mock implements Dio {}

class RequestOptionsMock extends Mock implements RequestOptions {}

void main() {
  late ClientMock client;
  late HttpClient sut;
  late String url;
  late RequestOptionsMock requestOptions;
  late int serverSuccessCode;

  setUp(() {
    client = ClientMock();
    requestOptions = RequestOptionsMock();
    sut = HttpAdapter(client);
    url = faker.internet.httpsUrl();

    serverSuccessCode = 200;
  });
  const Map<String, dynamic> anyMap = {'any_key': 'any_value'};

  test(
    'should throw on unrecognized http verb',
    () async {
      // act
      final future = sut.request(url: url, method: 'invalid');
      // assert
      expect(future, throwsA(const InvalidMethodFailure()));
    },
  );

  group('Get - ', () {
    Function() calledRequest() =>
        () => client.get(any(), queryParameters: any(named: 'queryParameters'), options: any(named: 'options'));
    When mockRequest() => when(calledRequest());
    void mockResponseForCode(int? code, {Map<String, dynamic>? body}) => mockRequest().thenAnswer(
          (_) async => Response(
            statusCode: code,
            data: body,
            requestOptions: requestOptions,
          ),
        );

    test('Should call get with correct values', () async {
      // arrange
      when(() => client.get(url, options: any(named: 'options'), queryParameters: anyMap))
          .thenAnswer((_) async => Response(requestOptions: requestOptions, statusCode: 200));

      // act
      sut.request(url: url, method: 'get', query: anyMap);

      // assert
      verify(() => client.get(url, options: any(named: 'options'), queryParameters: anyMap));
    });

    test(
      'should return a status 200 response on success',
      () async {
        // arrange
        mockResponseForCode(200, body: anyMap);

        // act
        final response = await sut.request(url: url, method: 'get');

        // assert
        verify(calledRequest());
        expect(response, isA<HttpResponse>());
        verifyNoMoreInteractions(client);
      },
    );

    group('failures - ', () {
      test(
        'should throw BadRequestFailure on code 400',
        () async {
          // arrange
          mockResponseForCode(400);

          // act
          final response = sut.request(url: url, method: 'get');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const BadRequestFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw UnauthorizedFailure on code 401',
        () async {
          // arrange
          mockResponseForCode(401);

          // act
          final response = sut.request(url: url, method: 'get');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const UnauthorizedFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw ForbiddenFailure on code 403',
        () async {
          // arrange
          mockResponseForCode(403);

          // act
          final response = sut.request(url: url, method: 'get');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const ForbiddenFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw NotFoundFailure on code 404',
        () async {
          // arrange
          mockResponseForCode(404);

          // act
          final response = sut.request(url: url, method: 'get');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const NotFoundFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw ServerFailure on any code greater than 500',
        () async {
          // arrange
          final integerGreaterThan500 = faker.randomGenerator.integer(599, min: 500);
          mockResponseForCode(integerGreaterThan500);

          // act
          final response = sut.request(url: url, method: 'get');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const ServerFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw ServerFailure on a null response code',
        () async {
          // arrange
          mockResponseForCode(null);

          // act
          final response = sut.request(url: url, method: 'get');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const ServerFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw UnrecognizedFailure for codes lesser than 200',
        () async {
          // arrange
          final unrecognizedStatusCode = faker.randomGenerator.integer(199);
          mockResponseForCode(unrecognizedStatusCode);

          // act
          final response = sut.request(url: url, method: 'get');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const UnrecognizedFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw UnrecognizedFailure for redirect codes',
        () async {
          // arrange
          final unrecognizedStatusCode = faker.randomGenerator.integer(399, min: 300);
          mockResponseForCode(unrecognizedStatusCode);

          // act
          final response = sut.request(url: url, method: 'get');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const UnrecognizedFailure()));
          verifyNoMoreInteractions(client);
        },
      );
    });
  });
  group('Post - ', () {
    Function() calledRequest() => () => client.post(any(), options: any(named: 'options'), data: any(named: 'data'));
    When mockRequest() => when(calledRequest());
    void mockResponseForCode(int? code, {Map<String, dynamic>? body}) => mockRequest().thenAnswer(
          (_) async => Response(
            statusCode: code,
            data: body,
            requestOptions: requestOptions,
          ),
        );

    test('Should call post with correct values', () async {
      // arrange
      when(() => client.post(url, options: any(named: 'options'), data: anyMap))
          .thenAnswer((_) async => Response(requestOptions: requestOptions, statusCode: 200));

      // act
      sut.request(url: url, method: 'post', body: anyMap);

      // assert
      verify(() => client.post(url, options: any(named: 'options'), data: anyMap));
    });

    test(
      'should return a status 200 response on success',
      () async {
        // arrange
        mockResponseForCode(200, body: anyMap);

        // act
        final response = await sut.request(url: url, method: 'post');

        // assert
        verify(calledRequest());
        expect(response, isA<HttpResponse>());
        verifyNoMoreInteractions(client);
      },
    );

    group('failures - ', () {
      test(
        'should throw BadRequestFailure on code 400',
        () async {
          // arrange
          mockResponseForCode(400);

          // act
          final response = sut.request(url: url, method: 'post');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const BadRequestFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw UnauthorizedFailure on code 401',
        () async {
          // arrange
          mockResponseForCode(401);

          // act
          final response = sut.request(url: url, method: 'post');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const UnauthorizedFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw ForbiddenFailure on code 403',
        () async {
          // arrange
          mockResponseForCode(403);

          // act
          final response = sut.request(url: url, method: 'post');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const ForbiddenFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw NotFoundFailure on code 404',
        () async {
          // arrange
          mockResponseForCode(404);

          // act
          final response = sut.request(url: url, method: 'post');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const NotFoundFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw ServerFailure on any code greater than 500',
        () async {
          // arrange
          final integerGreaterThan500 = faker.randomGenerator.integer(599, min: 500);
          mockResponseForCode(integerGreaterThan500);

          // act
          final response = sut.request(url: url, method: 'post');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const ServerFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw ServerFailure on a null response code',
        () async {
          // arrange
          mockResponseForCode(null);

          // act
          final response = sut.request(url: url, method: 'post');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const ServerFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw UnrecognizedFailure for codes lesser than 200',
        () async {
          // arrange
          final unrecognizedStatusCode = faker.randomGenerator.integer(199);
          mockResponseForCode(unrecognizedStatusCode);

          // act
          final response = sut.request(url: url, method: 'post');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const UnrecognizedFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw UnrecognizedFailure for redirect codes',
        () async {
          // arrange
          final unrecognizedStatusCode = faker.randomGenerator.integer(399, min: 300);
          mockResponseForCode(unrecognizedStatusCode);

          // act
          final response = sut.request(url: url, method: 'post');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const UnrecognizedFailure()));
          verifyNoMoreInteractions(client);
        },
      );
    });
  });
  group('Delete - ', () {
    Function() calledRequest() =>
        () => client.delete(any(), queryParameters: any(named: 'queryParameters'), options: any(named: 'options'));
    When mockRequest() => when(calledRequest());
    void mockResponseForCode(int? code, {Map<String, dynamic>? body}) => mockRequest().thenAnswer(
          (_) async => Response(
            statusCode: code,
            data: body,
            requestOptions: requestOptions,
          ),
        );

    test('Should call delete with correct values', () async {
      // arrange
      when(() => client.delete(url, options: any(named: 'options'), queryParameters: anyMap, data: anyMap))
          .thenAnswer((_) async => Response(requestOptions: requestOptions, statusCode: 200));

      // act
      sut.request(url: url, method: 'delete', query: anyMap, body: anyMap);

      // assert
      verify(() => client.delete(url, options: any(named: 'options'), queryParameters: anyMap, data: anyMap));
    });

    test(
      'should return a status 200 response on success',
      () async {
        // arrange
        mockResponseForCode(200, body: anyMap);

        // act
        final response = await sut.request(url: url, method: 'delete');

        // assert
        verify(calledRequest());
        expect(response, isA<HttpResponse>());
        verifyNoMoreInteractions(client);
      },
    );

    group('failures - ', () {
      test(
        'should throw BadRequestFailure on code 400',
        () async {
          // arrange
          mockResponseForCode(400);

          // act
          final response = sut.request(url: url, method: 'delete');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const BadRequestFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw UnauthorizedFailure on code 401',
        () async {
          // arrange
          mockResponseForCode(401);

          // act
          final response = sut.request(url: url, method: 'delete');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const UnauthorizedFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw ForbiddenFailure on code 403',
        () async {
          // arrange
          mockResponseForCode(403);

          // act
          final response = sut.request(url: url, method: 'delete');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const ForbiddenFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw NotFoundFailure on code 404',
        () async {
          // arrange
          mockResponseForCode(404);

          // act
          final response = sut.request(url: url, method: 'delete');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const NotFoundFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw ServerFailure on any code greater than 500',
        () async {
          // arrange
          final integerGreaterThan500 = faker.randomGenerator.integer(599, min: 500);
          mockResponseForCode(integerGreaterThan500);

          // act
          final response = sut.request(url: url, method: 'delete');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const ServerFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw ServerFailure on a null response code',
        () async {
          // arrange
          mockResponseForCode(null);

          // act
          final response = sut.request(url: url, method: 'delete');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const ServerFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw UnrecognizedFailure for codes lesser than 200',
        () async {
          // arrange
          final unrecognizedStatusCode = faker.randomGenerator.integer(199);
          mockResponseForCode(unrecognizedStatusCode);

          // act
          final response = sut.request(url: url, method: 'delete');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const UnrecognizedFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw UnrecognizedFailure for redirect codes',
        () async {
          // arrange
          final unrecognizedStatusCode = faker.randomGenerator.integer(399, min: 300);
          mockResponseForCode(unrecognizedStatusCode);
          // act
          final response = sut.request(url: url, method: 'delete');
          // assert
          verify(calledRequest());
          expect(response, throwsA(const UnrecognizedFailure()));
          verifyNoMoreInteractions(client);
        },
      );
    });
  });
  group('Put - ', () {
    Function() calledRequest() => () => client.put(any(),
        queryParameters: any(named: 'queryParameters'), options: any(named: 'options'), data: any(named: 'data'));
    When mockRequest() => when(calledRequest());
    void mockResponseForCode(int? code, {Map<String, dynamic>? body}) => mockRequest().thenAnswer(
          (_) async => Response(
            statusCode: code,
            data: body,
            requestOptions: requestOptions,
          ),
        );

    test('Should call put with correct values', () async {
      // arrange
      when(() => client.put(url, options: any(named: 'options'), queryParameters: anyMap, data: anyMap))
          .thenAnswer((_) async => Response(requestOptions: requestOptions, statusCode: 200));

      // act
      sut.request(url: url, method: 'put', query: anyMap, body: anyMap);

      // assert
      verify(() => client.put(url, options: any(named: 'options'), queryParameters: anyMap, data: anyMap));
    });

    test(
      'should return a status 200 response on success',
      () async {
        // arrange
        mockResponseForCode(200, body: anyMap);

        // act
        final response = await sut.request(url: url, method: 'put');

        // assert
        verify(calledRequest());
        expect(response, isA<HttpResponse>());
        verifyNoMoreInteractions(client);
      },
    );

    group('failures - ', () {
      test(
        'should throw BadRequestFailure on code 400',
        () async {
          // arrange
          mockResponseForCode(400);

          // act
          final response = sut.request(url: url, method: 'put');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const BadRequestFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw UnauthorizedFailure on code 401',
        () async {
          // arrange
          mockResponseForCode(401);

          // act
          final response = sut.request(url: url, method: 'put');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const UnauthorizedFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw ForbiddenFailure on code 403',
        () async {
          // arrange
          mockResponseForCode(403);

          // act
          final response = sut.request(url: url, method: 'put');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const ForbiddenFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw NotFoundFailure on code 404',
        () async {
          // arrange
          mockResponseForCode(404);

          // act
          final response = sut.request(url: url, method: 'put');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const NotFoundFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw ServerFailure on any code greater than 500',
        () async {
          // arrange
          final integerGreaterThan500 = faker.randomGenerator.integer(599, min: 500);
          mockResponseForCode(integerGreaterThan500);

          // act
          final response = sut.request(url: url, method: 'put');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const ServerFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw ServerFailure on a null response code',
        () async {
          // arrange
          mockResponseForCode(null);

          // act
          final response = sut.request(url: url, method: 'put');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const ServerFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw UnrecognizedFailure for codes lesser than 200',
        () async {
          // arrange
          final unrecognizedStatusCode = faker.randomGenerator.integer(199);
          mockResponseForCode(unrecognizedStatusCode);

          // act
          final response = sut.request(url: url, method: 'put');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const UnrecognizedFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw UnrecognizedFailure for redirect codes',
        () async {
          // arrange
          final unrecognizedStatusCode = faker.randomGenerator.integer(399, min: 300);
          mockResponseForCode(unrecognizedStatusCode);

          // act
          final response = sut.request(url: url, method: 'put');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const UnrecognizedFailure()));
          verifyNoMoreInteractions(client);
        },
      );
    });
  });
  group('Patch - ', () {
    Function() calledRequest() => () => client.patch(any(),
        queryParameters: any(named: 'queryParameters'), options: any(named: 'options'), data: any(named: 'data'));
    When mockRequest() => when(calledRequest());
    void mockResponseForCode(int? code, {Map<String, dynamic>? body}) => mockRequest().thenAnswer(
          (_) async => Response(
            statusCode: code,
            data: body,
            requestOptions: requestOptions,
          ),
        );

    test('Should call patch with correct values', () async {
      // arrange
      when(() => client.patch(url, options: any(named: 'options'), queryParameters: anyMap, data: anyMap))
          .thenAnswer((_) async => Response(requestOptions: requestOptions, statusCode: 200));

      // act
      sut.request(url: url, method: 'patch', query: anyMap, body: anyMap);

      // assert
      verify(() => client.patch(url, options: any(named: 'options'), queryParameters: anyMap, data: anyMap));
    });

    test(
      'should return a status 200 response on success',
      () async {
        // arrange
        mockResponseForCode(200, body: anyMap);

        // act
        final response = await sut.request(url: url, method: 'patch');

        // assert
        verify(calledRequest());
        expect(response, isA<HttpResponse>());
        verifyNoMoreInteractions(client);
      },
    );

    group('failures - ', () {
      test(
        'should throw BadRequestFailure on code 400',
        () async {
          // arrange
          mockResponseForCode(400);

          // act
          final response = sut.request(url: url, method: 'patch');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const BadRequestFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw UnauthorizedFailure on code 401',
        () async {
          // arrange
          mockResponseForCode(401);

          // act
          final response = sut.request(url: url, method: 'patch');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const UnauthorizedFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw ForbiddenFailure on code 403',
        () async {
          // arrange
          mockResponseForCode(403);

          // act
          final response = sut.request(url: url, method: 'patch');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const ForbiddenFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw NotFoundFailure on code 404',
        () async {
          // arrange
          mockResponseForCode(404);

          // act
          final response = sut.request(url: url, method: 'patch');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const NotFoundFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw ServerFailure on any code greater than 500',
        () async {
          // arrange
          final integerGreaterThan500 = faker.randomGenerator.integer(599, min: 500);
          mockResponseForCode(integerGreaterThan500);

          // act
          final response = sut.request(url: url, method: 'patch');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const ServerFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw ServerFailure on a null response code',
        () async {
          // arrange
          mockResponseForCode(null);

          // act
          final response = sut.request(url: url, method: 'patch');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const ServerFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw UnrecognizedFailure for codes lesser than 200',
        () async {
          // arrange
          final unrecognizedStatusCode = faker.randomGenerator.integer(199);
          mockResponseForCode(unrecognizedStatusCode);

          // act
          final response = sut.request(url: url, method: 'patch');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const UnrecognizedFailure()));
          verifyNoMoreInteractions(client);
        },
      );

      test(
        'should throw UnrecognizedFailure for redirect codes',
        () async {
          // arrange
          final unrecognizedStatusCode = faker.randomGenerator.integer(399, min: 300);
          mockResponseForCode(unrecognizedStatusCode);

          // act
          final response = sut.request(url: url, method: 'patch');

          // assert
          verify(calledRequest());
          expect(response, throwsA(const UnrecognizedFailure()));
          verifyNoMoreInteractions(client);
        },
      );
    });
  });
}
