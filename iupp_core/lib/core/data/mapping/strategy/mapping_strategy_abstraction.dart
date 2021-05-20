import '../../model/model.dart';

abstract class MappingStrategy {
  MappingStrategy({
    required this.model,
    required this.mapOrListOfMap,
  });
  final Model model;
  final dynamic mapOrListOfMap;

  dynamic call<Output extends Model>();
}
