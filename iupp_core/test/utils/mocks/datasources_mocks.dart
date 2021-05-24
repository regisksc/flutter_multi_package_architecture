import 'package:iupp_core/core.dart';
import 'package:mocktail/mocktail.dart';

class NetworkInfoMock extends Mock implements NetworkInfoAdapter {}

class HttpClientMock extends Mock implements HttpClient {}

class SingleOutputMappingStrategyMock extends Mock implements SingleOutputMappingStrategy {}

class MultipleOutputMappingStrategyMock extends Mock implements SingleOutputMappingStrategy {}
