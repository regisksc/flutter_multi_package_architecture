import '../../../../core.dart';
import '../../../resources/typedefs/model_serializer.dart';

abstract class RemoteDatasource {
  Future<Output> fetchOneOutput<Output extends Model>({
    required HttpRequestParams httpParams,
    required ModelSerializer modelSerializer,
  });

  Future<List<Output>> fetchMoreThanOneOutput<Output extends Model>({
    required HttpRequestParams httpParams,
    required ModelSerializer modelSerializer,
  });
}
