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

    Function() calledRequest() =>
        () => client.get(any(), queryParameters: any(named: 'queryParameters'), options: any(named: 'options'));
    When mockRequest() => when(calledRequest());
    void mockResponseForCode(int code, {Map<String, dynamic> body = anyMap}) => mockRequest().thenAnswer(
          (_) async => Response(
            statusCode: code,
            data: body,
            requestOptions: requestOptions,
          ),
        );

    void mockErrorForCode(Object throwable) => mockRequest().thenThrow(throwable);
    test(
      'should return a status 200 response on success',
      () async {
        // arrange
        mockResponseForCode(200);
        // act
        final response = await sut.request(url: url, method: 'get');
        // assert
        verify(calledRequest());
        expect(response, isA<HttpResponse>());
        verifyNoMoreInteractions(client);
      },
    );

    test(
      'should throw BadRequestFailure on code 200',
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
  });
}
