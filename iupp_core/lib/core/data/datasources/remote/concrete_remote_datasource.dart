import '../../../../core.dart';
import '../../../resources/typedefs/model_serializer.dart';

class ConcreteRemoteDatasource implements RemoteDatasource {
  ConcreteRemoteDatasource({required this.networkInfo, required this.client});

  final NetworkInfoAdapter networkInfo;
  final HttpClient client;

  Future<HttpResponse> _getRawDataFromRemote(HttpRequestParams httpParams) async {
    if (await networkInfo.hasConnection == false) throw const NoConnectionFailure();
    final response = await client.request(
      url: httpParams.endpoint,
      method: httpParams.method,
      body: httpParams.body,
      headers: httpParams.headers,
      queryParameters: httpParams.queryParameters,
    );
    return response;
  }

  @override
  Future<Output> fetchOneOutput<Output extends Model>({
    required HttpRequestParams httpParams,
    required ModelSerializer modelSerializer,
  }) async {
    final response = await _getRawDataFromRemote(httpParams);
    final mapOne = SingleOutputMappingStrategy(modelSerializer);
    return mapOne<Output>(response.data);
  }

  @override
  Future<List<Output>> fetchMoreThanOneOutput<Output extends Model>({
    required HttpRequestParams httpParams,
    required ModelSerializer modelSerializer,
  }) async {
    final response = await _getRawDataFromRemote(httpParams);
    final mapMany = MultipleOutputMappingStrategy(modelSerializer);
    return mapMany<Output>(response.data);
  }
}
