import '../../../../core.dart';
import '../../../resources/typedefs/model_serializer.dart';

class MultipleOutputMappingStrategy implements MappingStrategy {
  MultipleOutputMappingStrategy(this.modelSerializer);

  final ModelSerializer modelSerializer;

  late dynamic _mapOrListOfMap;
  List get _list => _mapOrListOfMap as List;

  @override
  List<Output> call<Output extends Model>(dynamic dataFromRemote) {
    _mapOrListOfMap = dataFromRemote;
    if (dataFromRemote is! List) throw _failure();
    try {
      final mappedIterable = _list.map((json) => modelSerializer(json as Map<String, dynamic>) as Output);
      return mappedIterable.toList();
    } catch (e) {
      throw _failure();
    }
  }

  InvalidMapFailure _failure() => InvalidMapFailure(_mapOrListOfMap.runtimeType);
}
