import '../../../adapters/network_info_adapter.dart';
import '../../data.dart';

abstract class RemoteDataSource {
  final NetworkInfoAdapter networkInfo;
  final HttpClient client;
  RemoteDataSource({required this.networkInfo, required this.client});
  Future fetch<Output extends Model>({
    required HttpRequestParams httpParams,
    required MappingParams mappingParams,
  });
}

class ConcreteRemoteDataSource implements RemoteDataSource {
  final NetworkInfoAdapter networkInfo;
  final HttpClient client;
  ConcreteRemoteDataSource({required this.networkInfo, required this.client});

  @override
  Future fetch<Output extends Model>({
    required HttpRequestParams httpParams,
    required MappingParams mappingParams,
  }) {
    throw UnimplementedError();
  }
}
