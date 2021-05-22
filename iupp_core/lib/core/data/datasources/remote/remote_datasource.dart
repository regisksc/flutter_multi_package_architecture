import '../../../../core.dart';
import '../../mapping/mapping.dart';

abstract class RemoteDatasource {
  Future fetch<Output extends Model>({
    required HttpRequestParams httpParams,
    required MappingParams mappingParams,
  });
}
