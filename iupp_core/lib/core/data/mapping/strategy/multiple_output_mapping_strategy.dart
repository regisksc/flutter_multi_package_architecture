import '../../../../core.dart';

class MultipleOutputMappingStrategy implements MappingStrategy {
  MultipleOutputMappingStrategy(this.model);
  final Model model;

  late dynamic _mapOrListOfMap;
  List get _list => _mapOrListOfMap as List;

  @override
  List<Output> call<Output extends Model>(dynamic dataFromRemote) {
    _mapOrListOfMap = dataFromRemote;
    if (dataFromRemote is! List) throw _failure();
    try {
      final mappedIterable = _list.map((json) => model.fromJson(json as Map<String, dynamic>) as Output);
      return mappedIterable.toList();
    } catch (e) {
      throw _failure();
    }
  }

  InvalidMapFailure _failure() => InvalidMapFailure(_mapOrListOfMap.runtimeType);
}
