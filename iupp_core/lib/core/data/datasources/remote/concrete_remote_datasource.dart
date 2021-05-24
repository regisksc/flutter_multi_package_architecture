import 'package:iupp_core/core.dart';
import 'package:iupp_core/core/error/failure/no_connection_failure.dart';

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
  }) async {
    if (await networkInfo.hasConnection) {
      final model = mappingParams.mapper as Output;
      final result = await client.request(
        url: httpParams.endpoint,
        method: httpParams.method,
        body: httpParams.body,
        headers: httpParams.headers,
        queryParameters: httpParams.queryParameters,
      );

      return model;
    } else {
      throw const NoConnectionFailure();
    }
  }
}
