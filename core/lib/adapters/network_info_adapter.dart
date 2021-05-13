import 'package:connectivity/connectivity.dart';
import 'package:data_connection_checker/data_connection_checker.dart';

class NetworkInfoAdapter {
  final DataConnectionChecker connectionChecker;
  final Connectivity connectivity;
  NetworkInfoAdapter(this.connectionChecker, this.connectivity);
  Future<bool> get isConnected => connectionChecker.hasConnection;
  Future<bool> get isOverWifi async => (await connectivity.checkConnectivity()) == ConnectivityResult.wifi;
  Future<bool> get isOver4g async => (await connectivity.checkConnectivity()) == ConnectivityResult.wifi;
}