import '../../../../core.dart';
import '../../mapping/mapping.dart';

abstract class RemoteDatasource {
  Future<Output> fetchOneOutput<Output extends Model>({
    required HttpRequestParams httpParams,
    required Model model,
  });
  Future<List<Output>> fetchMoreThanOneOutput<Output extends Model>({
    required HttpRequestParams httpParams,
    required Model model,
  });
}
