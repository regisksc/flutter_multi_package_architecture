import 'package:iupp_core/core.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entity/entities.dart';
import 'models.dart';

part 'categorized_products_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CategorizedProductsModel extends Model {
  CategorizedProductsModel({
    required this.category,
    required this.products,
  });

  final String category;
  final List<ProductModel> products;

  static CategorizedProductsModel fromJson(Map<String, dynamic> json) =>
      _$CategorizedProductsModelFromJson(json);

  @override
  Map<String, dynamic> get toJson => _$CategorizedProductsModelToJson(this);

  @override
  Entity get toEntity => CategorizedProductsEntity(
        category: category,
        products: products
            .map((product) => product.toEntity as ProductEntity)
            .toList(),
      );
}
