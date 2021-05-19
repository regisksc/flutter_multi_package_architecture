import '../../domain/entity/entity.dart';
import '../mapping/mapping.dart';

abstract class Model extends Mapper {
  Model fromJson(Map<String, dynamic> json);
  Map<String, dynamic> get toJson;
  Entity get toEntity;
}
