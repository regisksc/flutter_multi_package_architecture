import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/data/datasources/datasources.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/data/datasources/datasources_mocks.dart';

void main() {
  late HttpClientMock http;
  late NetworkInfoMock network;
  late RemoteDataSource sut;
  setUp(() {
    http = HttpClientMock();
    network = NetworkInfoMock();
    sut = ConcreteRemoteDataSource(networkInfo: network, client: http);
  });

  void testsWhenConnected(Function body) {
    group('When connected', () {
      setUp(() => when(() => network.isConnected).thenAnswer((_) async => true));
      body();
    });
  }
}
