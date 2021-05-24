import 'package:iupp_core/core/data/mapping/strategy/strategy.dart';
import 'package:iupp_core/core/data/model/model_abstraction.dart';
import 'package:iupp_core/core/error/mapping_failures.dart';

class SingleOutputMappingStrategy implements MappingStrategy {
  SingleOutputMappingStrategy(this.model);
  final Model model;

  @override
  Output call<Output extends Model>(dynamic dataFromRemote) {
    if (dataFromRemote is Map<String, dynamic>) return model.fromJson(dataFromRemote) as Output;
    throw InvalidMapFailure(dataFromRemote.runtimeType);
  }
}
