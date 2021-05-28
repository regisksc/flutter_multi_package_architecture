import 'package:iupp_core/core.dart';

import '../../data/models/models.dart';
import 'entities.dart';

class ProductVariationEntity extends Entity {
  ProductVariationEntity({
    required this.name,
    required this.value,
    required this.products,
  });

  final String name;
  final String value;
  final List<ProductEntity> products;

  @override
  List<Object?> get props => [name, value, products];

  @override
  Model get toModel => ProductVariationModel(
        name: name,
        value: value,
        products: products.map((product) => product.toModel).toList()
            as List<ProductModel>,
      );
}
