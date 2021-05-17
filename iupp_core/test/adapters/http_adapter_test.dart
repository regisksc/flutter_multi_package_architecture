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
  late Map<String, dynamic> anyMap;
  setUp(() {
    client = ClientMock();
    requestOptions = RequestOptionsMock();
    sut = HttpAdapter(client);
    url = faker.internet.httpsUrl();

    serverSuccessCode = 200;
    anyMap = {'any_key': 'any_value'};
  });

  test(
    'should thrown on unrecognized http verb',
    () async {
      // act
      final future = sut.request(url: url, method: 'invalid');
      // assert
      expect(future, throwsA(const InvalidMethodFailure()));
    },
  );

  group('Get requests - ', () {
    setUp(() {
      requestOptions.method = 'get';
    });
    test(
      'should return a status 200 response on success',
      () async {
        // arrange
        Function() calledRequest() =>
            () => client.get(any(), queryParameters: any(named: 'queryParameters'), options: any(named: 'options'));
        when(calledRequest()).thenAnswer(
          (_) async => Response(
            statusCode: 200,
            requestOptions: requestOptions,
            data: anyMap,
          ),
        );
        // act
        final response = await sut.request(url: url, method: 'get');
        // assert
        verify(calledRequest());
        expect(response, isA<HttpResponse>());
        expect(response.code, equals(200));
        verifyNoMoreInteractions(client);
      },
    );
  });
}
