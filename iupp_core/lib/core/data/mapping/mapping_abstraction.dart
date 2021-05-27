abstract class Mapper implements MapperToJson {}


abstract class MapperToJson {
  Map<String, dynamic> get toJson;
}
