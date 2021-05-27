import 'package:iupp_core/core.dart';

import '../../domain/entity/entities.dart';
import 'models.dart';

class OfferModel extends Model {
  OfferModel({
    required this.product,
    required this.startDate,
    required this.endDate,
  });

  final ProductModel product;
  final String startDate;
  final String endDate;

  @override
  Model fromJson(Map<String, dynamic> json) => OfferModel(
        product: json['product'] as ProductModel,
        startDate: json['startDate'] as String,
        endDate: json['endDate'] as String,
      );

  @override
  Entity get toEntity => OfferEntity(
        product: product.toEntity as ProductEntity,
        startDate: DateTime.now(),
        endDate: DateTime.now(),
      );

  @override
  Map<String, dynamic> get toJson => {
        'product': product.toJson,
        'startDate': startDate,
        'endDate': endDate,
      };
}
