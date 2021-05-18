import 'package:connectivity/connectivity.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';

/// The Connectivity plugin can give us several false positives, in which case
/// the user has connectivity but does not have access to the internet. The use
/// of the DataConnectionChecker plugin mitigates these false positives. So we
/// ask for the DataConnectionChecker info only when Connectivity ensure we have
/// connectivity.
class NetworkInfoAdapter {
  NetworkInfoAdapter({
    required Connectivity connectivity,
    required DataConnectionChecker dataConnectionChecker,
  })   : _connectivity = connectivity,
        _dataConnectionChecker = dataConnectionChecker;

  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  Future<bool> get _hasConnectivity async {
    final connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  Future<bool> get hasConnection async {
    if (await _hasConnectivity) {
      if (await _dataConnectionChecker.hasConnection) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  Stream<DataConnectionStatus> get connectionChanges =>
      _dataConnectionChecker.onStatusChange;
}
