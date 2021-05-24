import 'package:iupp_core/core.dart';

class ConcreteRemoteDatasource implements RemoteDatasource {
  ConcreteRemoteDatasource({
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