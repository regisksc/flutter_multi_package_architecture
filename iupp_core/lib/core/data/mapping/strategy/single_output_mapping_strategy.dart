import '../../data.dart';
import '../../model/model_abstraction.dart';
import 'strategy.dart';

class SingleOutputMappingStrategy implements MappingStrategy {
  SingleOutputMappingStrategy(this.model);
  final Model model;

  @override
  Output call<Output extends Model>(dynamic dataFromRemote) {
    if (dataFromRemote is Map<String, dynamic>) return model.fromJson(dataFromRemote) as Output;
    throw InvalidMapFailure(dataFromRemote.runtimeType);
  }
}
