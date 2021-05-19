abstract class Mapper {
  Mapper fromJson(Map<String, dynamic> json);
  Map<String, dynamic> get toJson;
}
