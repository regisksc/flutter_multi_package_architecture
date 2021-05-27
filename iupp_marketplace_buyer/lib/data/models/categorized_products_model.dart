import 'package:iupp_core/core.dart';

import '../../domain/entity/entities.dart';
import 'models.dart';

class CategorizedProductsModel extends Model {
  CategorizedProductsModel({
    required this.category,
    required this.products,
  });

  final String category;
  final List<ProductModel> products;

  static Model fromMap(Map<String, dynamic> json) {
    final productsJsonList = json['products'] as List<Map<String, dynamic>>;
    final products =
        List.generate(productsJsonList.length, (i) => productsJsonList[i])
            .toList() as List<ProductModel>;

    return CategorizedProductsModel(
      category: json['category'] as String,
      products: products,
    );
  }

  @override
  Model fromJson(Map<String, dynamic> json) =>
      CategorizedProductsModel.fromMap(json);

  @override
  Entity get toEntity => CategorizedProductsEntity(
        category: category,
        products: products
            .map((product) => product.toEntity as ProductEntity)
            .toList(),
      );

  @override
  Map<String, dynamic> get toJson => {
        'category': category,
        'products': products.map((product) => product.toJson).toList(),
      };
}
