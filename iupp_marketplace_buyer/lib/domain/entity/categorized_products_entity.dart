import 'package:iupp_core/core.dart';

import '../../data/models/models.dart';
import 'entities.dart';

class CategorizedProductsEntity extends Entity {
  CategorizedProductsEntity({
    required this.category,
    required this.products,
  });

  final String category;
  final List<ProductEntity> products;

  @override
  List<Object?> get props => [category];

  @override
  Model get toModel => CategorizedProductsModel(
        category: category,
        products: products.map((product) => product.toModel).toList()
            as List<ProductModel>,
      );
}
