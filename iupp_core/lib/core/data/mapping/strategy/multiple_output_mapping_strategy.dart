import '../../../../core.dart';

class MultipleOutputMappingStrategy implements MappingStrategy {
  MultipleOutputMappingStrategy({
    required this.model,
    required this.mapOrListOfMap,
  });
  final Model model;
  final dynamic mapOrListOfMap;

  List get _list => mapOrListOfMap as List;

  @override
  List call<Output extends Model>() {
    if (mapOrListOfMap is! List) throw _failure();
    if (!_allElementsAreJson) throw _failure();
    final result = _list.map((json) => model.fromJson(Map<String, dynamic>.from(json as Map))).toList();
    return result;
  }

  InvalidMapFailure _failure() => InvalidMapFailure(mapOrListOfMap.runtimeType);

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
