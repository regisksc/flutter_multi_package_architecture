import 'package:cross_connectivity/cross_connectivity.dart';

class NetworkInfoAdapter {
  NetworkInfoAdapter({
    required Connectivity connectivity,
  }) : _connectivity = connectivity;

  final Connectivity _connectivity;

  Stream<bool> get isConnected => _connectivity.isConnected;

  Future<bool> get checkConnection async => _connectivity.checkConnection();

  Future<bool> get isOverReliableConnection async {
    final status = await _connectivity.checkConnectivity();
    final isOverWifi = status == ConnectivityStatus.wifi;
    final isOverCable = status == ConnectivityStatus.ethernet;
    return isOverWifi || isOverCable;
  }
}
