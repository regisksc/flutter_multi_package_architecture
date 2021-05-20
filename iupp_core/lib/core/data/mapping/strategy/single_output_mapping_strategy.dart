import 'package:iupp_core/core/data/mapping/strategy/strategy.dart';
import 'package:iupp_core/core/data/model/model_abstraction.dart';
import 'package:iupp_core/core/error/mapping_failures.dart';

class SingleOutputMappingStrategy implements MappingStrategy {
  SingleOutputMappingStrategy({
    required this.model,
    required this.map,
  });
  final Model model;
  final dynamic map;

  @override
  Output? call<Output extends Model>() {
    late Output result;
    try {
      if (map is Map<String, dynamic>) {
        return model.fromJson(map as Map<String, dynamic>) as Output;
      }
      throw InvalidMapFailure(map.runtimeType);
    } on Exception catch (e) {
      print(e.runtimeType);
      return model as Output;
    }
  }
}
