import '../../model/model.dart';

abstract class MappingStrategy {
  MappingStrategy({
    required this.model,
    required this.map,
  });
  final Model model;
  final dynamic map;

  dynamic call<Output extends Model>();
}
