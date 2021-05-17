import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/data/datasources/datasources.dart';

import '../../../mocks/data/datasources/datasources_mocks.dart';

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
      body();
    });
  }
}
