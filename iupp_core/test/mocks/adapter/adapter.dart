import 'package:connectivity/connectivity.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:mocktail/mocktail.dart';

class ConnectivityMock extends Mock implements Connectivity {}

class DataConnectionCheckerMock extends Mock implements DataConnectionChecker {}