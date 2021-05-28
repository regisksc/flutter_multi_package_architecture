import 'package:iupp_core/core.dart';

import '../../domain/entity/entities.dart';
import 'models.dart';

class ProductVariationModel extends Model {
  ProductVariationModel({
    required this.name,
    required this.value,
    required this.products,
  });

  final String name;
  final String value;
  final List<ProductModel> products;

  static Model fromMap(Map<String, dynamic> json) {
    final productsJsonList = json['products'] as List<Map<String, dynamic>>;
    final products = List.generate(productsJsonList.length,
            (i) => ProductModel.fromMap(productsJsonList[i])).toList()
        as List<ProductModel>;

    return ProductVariationModel(
      name: json['name'] as String,
      value: json['value'] as String,
      products: products,
    );
  }

  @override
  Model fromJson(Map<String, dynamic> json) =>
      ProductVariationModel.fromMap(json);

  @override
  Map<String, dynamic> get toJson => {
        'name': name,
        'value': value,
        'products': products.map((product) => product.toJson).toList(),
      };

  @override
  Entity get toEntity => ProductVariationEntity(
        name: name,
        value: value,
        products: products
            .map((product) => product.toEntity as ProductEntity)
            .toList(),
      );
}
