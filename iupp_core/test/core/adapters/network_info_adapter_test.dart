import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_core/core/dependencies/dependencies.dart';
import 'package:mocktail/mocktail.dart';

import '../../utils/mocks/network_info_adapter_mocks.dart';

void main() {
  late NetworkInfoAdapter networkInfoAdapter;
  late ConnectivityMock connectivityMock;
  late DataConnectionCheckerMock dataConnectionCheckerMock;

  setUp(() {
    connectivityMock = ConnectivityMock();
    dataConnectionCheckerMock = DataConnectionCheckerMock();
    networkInfoAdapter = NetworkInfoAdapter(
      connectivity: connectivityMock,
      dataConnectionChecker: dataConnectionCheckerMock,
    );
  });

  void mockConnectivityWithResult(ConnectivityResult result) {
    when(() => connectivityMock.checkConnectivity()).thenAnswer((_) async => result);
  }

  void mockDataConnectionChecker({required bool hasConnection}) {
    when(() => dataConnectionCheckerMock.hasConnection).thenAnswer((_) => Future.value(hasConnection));
  }

  group('hasConnection', () {
    test(
      'should return false when there is no connectivity',
      () async {
        // arrange
        mockConnectivityWithResult(ConnectivityResult.none);

        // act
        final hasConnection = await networkInfoAdapter.hasConnection;

        // assert
        expect(hasConnection, false);
      },
    );

    test(
      'should return true when has connectivity over mobile and connection',
      () async {
        // arrange
        mockConnectivityWithResult(ConnectivityResult.mobile);
        mockDataConnectionChecker(hasConnection: true);

        // act
        final hasConnection = await networkInfoAdapter.hasConnection;

        // assert
        expect(hasConnection, true);
      },
    );

    test(
      'should return true when has connectivity over wifi and connection',
      () async {
        // arrange
        mockConnectivityWithResult(ConnectivityResult.wifi);
        mockDataConnectionChecker(hasConnection: true);

        // act
        final hasConnection = await networkInfoAdapter.hasConnection;

        // assert
        expect(hasConnection, true);
      },
    );

    test(
      'should return false when has connectivity but no connection',
      () async {
        // arrange
        mockConnectivityWithResult(ConnectivityResult.wifi);
        mockDataConnectionChecker(hasConnection: false);

        // act
        final hasConnection = await networkInfoAdapter.hasConnection;

        // assert
        expect(hasConnection, false);
      },
    );
  });

  group('connectionChanges', () {
    test(
      'should return a stream of DataConnectionStatus',
      () async {
        when(() => dataConnectionCheckerMock.onStatusChange).thenAnswer((_) => Stream.fromIterable([
              DataConnectionStatus.connected,
              DataConnectionStatus.disconnected,
              DataConnectionStatus.connected,
            ]));

        final dataConnectionStream = networkInfoAdapter.connectionChanges;
        expect(dataConnectionStream, isA<Stream<DataConnectionStatus>>());
      },
    );

    test(
      'should emit the right values in the right order',
      () async {
        final dataConnectionController = StreamController<DataConnectionStatus>();
        final dataConnectionStream = dataConnectionController.stream;

        when(() => dataConnectionCheckerMock.onStatusChange).thenAnswer((_) => dataConnectionStream);

        expectLater(
            dataConnectionStream,
            emitsInAnyOrder([
              DataConnectionStatus.connected,
              DataConnectionStatus.disconnected,
              DataConnectionStatus.connected,
            ]));

        dataConnectionController.add(DataConnectionStatus.connected);
        dataConnectionController.add(DataConnectionStatus.disconnected);
        dataConnectionController.add(DataConnectionStatus.connected);
      },
    );
  });
}
