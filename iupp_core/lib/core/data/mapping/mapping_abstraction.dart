abstract class Mapper implements MapperFromJson, MapperToJson {}

abstract class MapperFromJson {
  Mapper fromJson(Map<String, dynamic> json);
}

abstract class MapperToJson {
  Map<String, dynamic> get toJson;
}
