import '../../../resources/typedefs/model_serializer.dart';
import '../../data.dart';
import '../../model/model_abstraction.dart';
import 'strategy.dart';

class SingleOutputMappingStrategy implements MappingStrategy {
  SingleOutputMappingStrategy(this.modelSerializer);

  final ModelSerializer modelSerializer;

  @override
  Output call<Output extends Model>(dynamic dataFromRemote) {
    if (dataFromRemote is Map<String, dynamic>) return modelSerializer(dataFromRemote) as Output;
    throw InvalidMapFailure(dataFromRemote.runtimeType);
  }
}
