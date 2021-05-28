import 'package:iupp_core/core.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entity/entities.dart';
import 'models.dart';

part 'offer_model.g.dart';

@JsonSerializable(explicitToJson: true)
class OfferModel extends Model {
  OfferModel({
    required this.product,
    required this.startDate,
    required this.endDate,
  });

  final ProductModel product;
  final String startDate;
  final String endDate;

  static OfferModel fromJson(Map<String, dynamic> json) => _$OfferModelFromJson(json);

  @override
  Map<String, dynamic> get toJson => _$OfferModelToJson(this);

  @override
  Entity get toEntity => OfferEntity(
        product: product.toEntity as ProductEntity,
        startDate: DateTime.now(),
        endDate: DateTime.now(),
      );
}
