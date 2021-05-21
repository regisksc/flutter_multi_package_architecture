import 'package:iupp_core/core/data/mapping/strategy/strategy.dart';
import 'package:iupp_core/core/data/model/model_abstraction.dart';
import 'package:iupp_core/core/error/mapping_failures.dart';

class SingleOutputMappingStrategy implements MappingStrategy {
  SingleOutputMappingStrategy({required this.model});
  final Model model;

  @override
  Output? call<Output extends Model>({required dynamic mapOrListOfMap}) {
    if (mapOrListOfMap is Map<String, dynamic>) return model.fromJson(mapOrListOfMap) as Output;
    throw InvalidMapFailure(mapOrListOfMap.runtimeType);
  }
}
