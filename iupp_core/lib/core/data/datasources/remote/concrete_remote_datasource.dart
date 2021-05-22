import 'package:iupp_core/core.dart';

class ConcreteRemoteDataSource implements RemoteDatasource {
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