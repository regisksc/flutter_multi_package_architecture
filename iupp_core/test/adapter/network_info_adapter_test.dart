import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/adapter/adapter.dart';

void main() {
  late NetworkInfoAdapter networkInfoAdapter;
  late ConnectivityMock connectivityMock;

  setUp(() {
    connectivityMock = ConnectivityMock();
    networkInfoAdapter = NetworkInfoAdapter(connectivity: connectivityMock);
  });

  group('checkConnection', () {
    test(
      'should check the current connection status when true',
      () async {
        when(() => connectivityMock.checkConnection())
            .thenAnswer((_) async => Future.value(true));
        final connectionStatus = await networkInfoAdapter.checkConnection;
        expect(connectionStatus, true);
      },
    );

    test(
      'should check the current connection status when false',
      () async {
        when(() => connectivityMock.checkConnection())
            .thenAnswer((_) async => Future.value(false));
        final connectionStatus = await networkInfoAdapter.checkConnection;
        expect(connectionStatus, false);
      },
    );
  });

  group('isOverReliableConnection', () {
    test(
      'should return true when connectivity status is wifi',
      () async {
        when(() => connectivityMock.checkConnectivity())
            .thenAnswer((_) async => Future.value(ConnectivityStatus.wifi));
        final connectionStatus =
            await networkInfoAdapter.isOverReliableConnection;
        expect(connectionStatus, true);
      },
    );

    test(
      'should return true when connectivity status is ethernet',
      () async {
        when(() => connectivityMock.checkConnectivity())
            .thenAnswer((_) async => Future.value(ConnectivityStatus.ethernet));
        final connectionStatus =
            await networkInfoAdapter.isOverReliableConnection;
        expect(connectionStatus, true);
      },
    );

    test(
      'should return false when connectivity status is none',
      () async {
        when(() => connectivityMock.checkConnectivity())
            .thenAnswer((_) async => Future.value(ConnectivityStatus.none));
        final connectionStatus =
            await networkInfoAdapter.isOverReliableConnection;
        expect(connectionStatus, false);
      },
    );
  });
}
