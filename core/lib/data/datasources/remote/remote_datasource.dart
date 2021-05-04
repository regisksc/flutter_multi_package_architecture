import 'package:core/data/model/mapping_params.dart';
import 'package:flutter/foundation.dart';

import '../../../adapters/network_info_adapter.dart';
import '../../data.dart';
import '../../http/http_request_params.dart';

abstract class RemoteDataSource {
  final NetworkInfoAdapter networkInfo;
  RemoteDataSource(this.networkInfo);
  Future fetch<Output extends Model>({
    @required HttpRequestParams httpParams,
    @required MappingParams mappingParams,
  });
}
