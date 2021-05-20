import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../utils/constants/data_type_test_constants.dart';
import '../../../../utils/mocks/datasources_mocks.dart';
import '../../../../utils/mocks/mocks.dart';

void main() {
  late RemoteDataSource sut;
  late HttpClientMock http;
  late NetworkInfoMock network;
  late HttpRequestParams httpParams;

  setUp(() {
    http = HttpClientMock();
    network = NetworkInfoMock();
    sut = ConcreteRemoteDataSource(networkInfo: network, client: http);
  });

  void testsWhenConnected(Function() body) {
    group('When connected ', () {
      when(() => sut.networkInfo.hasConnection).thenAnswer((_) async => true);
      body();
    });
  }

  void testsWhenOffline(Function() body) {
    group('When offline ', () {
      when(() => sut.networkInfo.hasConnection).thenAnswer((_) async => false);
      body();
    });
  }

  When mockHttpRequestAnd() => when(
        () => http.request(
          url: any(named: 'url'),
          method: any(named: 'url'),
          body: any(named: 'url'),
          headers: any(named: 'url'),
          query: any(named: 'url'),
        ),
      );

  testsWhenConnected(() {
    test(
      'should successfully fetch and return Output',
      () async {
        // arrange
        mockHttpRequestAnd().thenAnswer((invocation) => HttpResponse(code: 200, message: anyMessage, data: anyMap));

        // act
        // final result = sut.fetch<ModelMock>(httpParams: httpParams, mappingParams: mappingParams);

        // assert
      },
    );
  });
}
