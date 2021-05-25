import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../utils/constants/data_type_test_constants.dart';
import '../../../../utils/mocks/datasources_mocks.dart';
import '../../../../utils/mocks/mocks.dart';

void main() {
  late RemoteDatasource sut;
  late HttpClientMock http;
  late NetworkInfoMock network;
  late String url;
  late HttpMethod method;
  late Map<String, dynamic> body;
  late Map<String, dynamic> query;
  late Map<String, String> headers;
  late ModelMock model;

  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    http = HttpClientMock();
    network = NetworkInfoMock();
    sut = ConcreteRemoteDatasource(networkInfo: network, client: http);

    url = faker.internet.httpsUrl();
    method = HttpMethod.get;
    body = anyMap;
    query = anyMap;
    headers = {'key': 'string_header'};

    model = ModelMock();
  });

  When mockHttpRequest({String? url, String? body, String? query}) {
    return when(
      () => http.request(
        url: any(named: 'url'),
        method: any(named: 'method'),
        body: any(named: 'body'),
        headers: any(named: 'headers'),
        queryParameters: any(named: 'queryParameters'),
      ),
    );
  }

  group('When fetching one -', () {
    test(
      'should return a single Output ',
      () async {
        // arrange
        final httpResponse = HttpResponse(code: 200, message: anyMessage, data: anyMap);
        when(() => network.hasConnection).thenAnswer((_) async => true);
        mockHttpRequest().thenAnswer((invocation) async => httpResponse);

        // act
        final httpParams = HttpRequestParams(
          httpMethod: method,
          endpoint: url,
          queryParameters: query,
          body: body,
          headers: headers,
        );
        final result = await sut.fetchOneOutput<ModelMock>(
          httpParams: httpParams,
          model: model,
        );

        // assert
        verify(() => network.hasConnection);
        expect(result, isA<ModelMock>());
      },
    );
  });
  group('When fetching many -', () {
    test(
      'should return a List of Output ',
      () async {
        // arrange
        final httpResponse = HttpResponse(code: 200, message: anyMessage, data: [anyMap, anyMap]);
        when(() => network.hasConnection).thenAnswer((_) async => true);
        mockHttpRequest().thenAnswer((invocation) async => httpResponse);

        // act
        final httpParams = HttpRequestParams(
          httpMethod: method,
          endpoint: url,
          queryParameters: query,
          body: body,
          headers: headers,
        );
        final result = await sut.fetchMoreThanOneOutput<ModelMock>(
          httpParams: httpParams,
          model: model,
        );

        // assert
        verify(() => network.hasConnection);
        expect(result, isA<List<ModelMock>>());
      },
    );
  });
}
