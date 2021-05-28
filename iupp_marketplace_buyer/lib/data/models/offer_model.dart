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

  static Model fromMap(Map<String, dynamic> json) => OfferModel(
        product: ProductModel.fromMap(json['product'] as Map<String, dynamic>)
            as ProductModel,
        startDate: json['startDate'] as String,
        endDate: json['endDate'] as String,
      );

  @override
  Model fromJson(Map<String, dynamic> json) => OfferModel.fromMap(json);

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
