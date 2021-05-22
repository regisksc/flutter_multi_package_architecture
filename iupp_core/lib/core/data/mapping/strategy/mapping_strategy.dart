import '../../model/model.dart';

abstract class MappingStrategy {
  dynamic call<Output extends Model>({required dynamic mapOrListOfMap});
}
