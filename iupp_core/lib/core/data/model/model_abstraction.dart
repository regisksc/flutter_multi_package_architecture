import '../../domain/entity/entity.dart';
import '../mapping/mapping.dart';

abstract class Model extends Mapper {
  Map<String, dynamic> get toJson;
  Entity get toEntity;
}
