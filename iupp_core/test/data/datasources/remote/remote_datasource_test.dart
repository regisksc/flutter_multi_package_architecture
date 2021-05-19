import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';

import '../../../utils/data/datasources/datasources_mocks.dart';

void main() {
  late RemoteDataSource sut;
  late HttpClientMock http;
  late NetworkInfoMock network;

  setUp(() {
    http = HttpClientMock();
    network = NetworkInfoMock();
    sut = ConcreteRemoteDataSource(networkInfo: network, client: http);
  });

  void testsWhenConnected(Function body) {
    group('When connected', () {
      when(() => sut.networkInfo.hasConnection).thenAnswer((_) async => true);
      body();
    });
  }
}
