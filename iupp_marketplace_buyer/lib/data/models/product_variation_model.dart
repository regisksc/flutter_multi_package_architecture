import 'package:iupp_core/core.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entity/entities.dart';
import 'models.dart';

part 'product_variation_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductVariationModel extends Model {
  ProductVariationModel({
    required this.name,
    required this.value,
    required this.products,
  });

  final String name;
  final String value;
  final List<ProductModel> products;

  static ProductVariationModel fromJson(Map<String, dynamic> json) =>
      _$ProductVariationModelFromJson(json);

  @override
  Map<String, dynamic> get toJson => _$ProductVariationModelToJson(this);

  @override
  Entity get toEntity => ProductVariationEntity(
        name: name,
        value: value,
        products: products
            .map((product) => product.toEntity as ProductEntity)
            .toList(),
      );
}
