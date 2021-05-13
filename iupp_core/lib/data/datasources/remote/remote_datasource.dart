import '../../../adapters/network_info_adapter.dart';
import '../../data.dart';

abstract class RemoteDataSource {
  RemoteDataSource({
    required this.networkInfo,
    required this.client,
  });

  final NetworkInfoAdapter? networkInfo;
  final HttpClient? client;

  Future fetch<Output extends Model>({
    required HttpRequestParams httpParams,
    required MappingParams mappingParams,
  });
}
