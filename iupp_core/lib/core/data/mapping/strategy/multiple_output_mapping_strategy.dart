import 'package:iupp_core/core/data/model/model_abstraction.dart';

import 'strategy.dart';

class MultipleOutputMappingStrategy implements MappingStrategy {
  MultipleOutputMappingStrategy({
    required this.model,
    required this.map,
  });
  final Model model;
  final dynamic map;

  @override
  List<Output> call<Output extends Model>() {
    throw UnimplementedError();
  }
}
