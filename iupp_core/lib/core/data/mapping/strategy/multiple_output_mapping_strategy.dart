import '../../../../core.dart';

class MultipleOutputMappingStrategy implements MappingStrategy {
  MultipleOutputMappingStrategy({
    required this.model,
  });
  final Model model;

  late dynamic _mapOrListOfMap;
  List get _list => _mapOrListOfMap as List;

  @override
  List call<Output extends Model>({required dynamic mapOrListOfMap}) {
    _mapOrListOfMap = mapOrListOfMap;
    if (mapOrListOfMap is! List) throw _failure();
    if (!_allElementsAreJson) throw _failure();
    final result = _list.map((json) => model.fromJson(Map<String, dynamic>.from(json as Map))).toList();
    return result;
  }

  InvalidMapFailure _failure() => InvalidMapFailure(_mapOrListOfMap.runtimeType);

  bool get _allElementsAreJson {
    try {
      for (final item in _list) {
        Map<String, dynamic>.from(item as Map);
      }
      return true;
    } catch (e) {
      return false;
    }
  }
}
