import 'package:cross_connectivity/cross_connectivity.dart';

class NetworkInfoAdapter {
  NetworkInfoAdapter({required this.connectivity});
  final Connectivity connectivity;

  Stream<bool> get listenToConnection => connectivity.isConnected;
  Future<bool> get isConnected => connectivity.checkConnection();
  Future<bool> get isOverReliableConnection async {
    final status = await connectivity.checkConnectivity();
    final isOverWifi = status == ConnectivityStatus.wifi;
    final isOverCable = status == ConnectivityStatus.ethernet;
    return isOverWifi || isOverCable;
  }
}
