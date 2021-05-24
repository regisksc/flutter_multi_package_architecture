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

  setUpAll(() {
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

  void testsWhenConnected(Function() body) {}

  /* void testsWhenOffline(Function() body) {
    group('When offline ', () {
      when(() => sut.networkInfo.hasConnection).thenAnswer((_) async => false);
      body();
    });
  } */

  When mockHttpRequest() {
    return when(
      ({String? url, String? body, String? query}) {
        return http.request(
          url: any(named: 'url'),
          method: any(named: 'method'),
          body: any(named: 'body'),
          headers: any(named: 'headers'),
          queryParameters: any(named: 'queryParameters'),
        );
      },
    );
  }

  test(
    'should successfully fetch and return Output ',
    () async {
      // arrange
      mockHttpRequest().thenAnswer((invocation) => HttpResponse(code: 200, message: anyMessage, data: anyMap));

      // act
      final result = sut.fetch<ModelMock>(
        httpParams: HttpRequestParams(httpFetchMethod: method, endpoint: url, queryParameters: query),
        mappingParams: MappingParams(mapper: model, amountOfOutput: MapFor.one),
      );

      // assert
      expect(result, isA<ModelMock>());
    },
  );
}
