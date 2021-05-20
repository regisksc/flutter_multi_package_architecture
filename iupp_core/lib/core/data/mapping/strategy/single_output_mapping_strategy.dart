import 'package:iupp_core/core/data/mapping/strategy/strategy.dart';
import 'package:iupp_core/core/data/model/model_abstraction.dart';
import 'package:iupp_core/core/error/mapping_failures.dart';

class SingleOutputMappingStrategy implements MappingStrategy {
  SingleOutputMappingStrategy({
    required this.model,
    required this.mapOrListOfMap,
  });
  final Model model;
  final dynamic mapOrListOfMap;

  @override
  Output? call<Output extends Model>() {
    late Output result;
    if (mapOrListOfMap is Map<String, dynamic>) {
      return model.fromJson(mapOrListOfMap as Map<String, dynamic>) as Output;
    }
    throw InvalidMapFailure(mapOrListOfMap.runtimeType);
  }
}
