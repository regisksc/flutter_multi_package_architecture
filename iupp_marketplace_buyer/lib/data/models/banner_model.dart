import 'package:iupp_core/core.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entity/entities.dart';

part 'banner_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BannerModel extends Model {
  BannerModel({
    required this.id,
    required this.bannerUrl,
  });

  final int id;
  final String bannerUrl;

  static BannerModel fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);

  @override
  Map<String, dynamic> get toJson => _$BannerModelToJson(this);

  @override
  Entity get toEntity => BannerEntity(
        bannerId: id,
        bannerUrl: bannerUrl,
      );
}
