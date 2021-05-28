import '../../../core.dart';

class SellerModel extends Model {
  SellerModel(this.name);

  final String name;

  @override
  SellerModel fromJson(Map<String, dynamic> map) {
    return SellerModel(
      map['name'] as String,
    );
  }

  @override
  Entity get toEntity => SellerEntity(name);

  @override
  Map<String, dynamic> get toJson {
    return {
      'name': name,
    };
  }
}
