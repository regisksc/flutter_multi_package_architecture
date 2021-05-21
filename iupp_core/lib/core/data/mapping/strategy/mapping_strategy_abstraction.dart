import '../../model/model.dart';

abstract class MappingStrategy {
  MappingStrategy({required this.model});
  final Model model;
  dynamic call<Output extends Model>({required dynamic mapOrListOfMap});
}
