import '../../../../core.dart';
import '../../mapping/mapping.dart';

abstract class RemoteDataSource {
  RemoteDataSource({
    required this.networkInfo,
    required this.client,
  });

  Future fetch<Output extends Model>({
    required HttpRequestParams httpParams,
    required MappingParams mappingParams,
  });

  final NetworkInfoAdapter networkInfo;
  final HttpClient client;
}

class ConcreteRemoteDataSource implements RemoteDataSource {
  ConcreteRemoteDataSource({
    required this.networkInfo,
    required this.client,
  });

  final NetworkInfoAdapter networkInfo;
  final HttpClient client;

  @override
  Future fetch<Output extends Model>({
    required HttpRequestParams httpParams,
    required MappingParams mappingParams,
  }) {
    throw UnimplementedError();
  }
}
