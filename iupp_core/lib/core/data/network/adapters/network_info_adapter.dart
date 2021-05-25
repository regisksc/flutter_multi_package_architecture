import '../../../dependencies/app_dependencies.dart';

/// The Connectivity plugin can give us several false positives, in which case
/// the user has connectivity but does not have access to the internet. The use
/// of the DataConnectionChecker plugin mitigates these false positives. So we
/// ask for the DataConnectionChecker info only when Connectivity ensure we have
/// connectivity.
class NetworkInfoAdapter {
  NetworkInfoAdapter({
    required Connectivity connectivity,
    required DataConnectionChecker dataConnectionChecker,
  })  : _connectivity = connectivity,
        _dataConnectionChecker = dataConnectionChecker;

  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  Future<bool> get _hasConnectivity async {
    final connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  Future<bool> get hasConnection async {
    final hasConnectivity = await _hasConnectivity;
    if (!hasConnectivity) return false;
    return _dataConnectionChecker.hasConnection;
  }

  Stream<DataConnectionStatus> get connectionChanges => _dataConnectionChecker.onStatusChange;
}
