import 'package:iupp_core/core.dart';

import '../../domain/entity/entities.dart';

class BannerModel extends Model {
  BannerModel({
    required this.id,
    required this.bannerUrl,
  });

  final int id;
  final String bannerUrl;

  static Model fromMap(Map<String, dynamic> json) {
    return BannerModel(
      id: json['id'] as int,
      bannerUrl: json['bannerUrl'] as String,
    );
  }

  @override
  Model fromJson(Map<String, dynamic> json) => BannerModel.fromMap(json);

  @override
  Map<String, dynamic> get toJson => {
        'id': id,
        'bannerUrl': bannerUrl,
      };

  @override
  Entity get toEntity => BannerEntity(
        bannerId: id,
        bannerUrl: bannerUrl,
      );
}
