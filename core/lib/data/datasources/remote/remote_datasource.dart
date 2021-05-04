import 'package:flutter/foundation.dart';

import '../../../adapters/network_info_adapter.dart';
import '../../data.dart';

abstract class RemoteDataSource {
  final NetworkInfoAdapter networkInfo;
  final HttpClient client;
  RemoteDataSource({this.networkInfo, this.client});
  Future fetch<Output extends Model>({
    @required HttpRequestParams httpParams,
    @required MappingParams mappingParams,
  });
}
