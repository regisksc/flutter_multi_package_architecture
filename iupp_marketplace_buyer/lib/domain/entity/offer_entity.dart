import 'package:iupp_core/core.dart';

import '../../data/models/models.dart';
import 'entities.dart';

class OfferEntity extends Entity {
  OfferEntity({
    required this.product,
    required this.startDate,
    required this.endDate,
  });

  final ProductEntity product;
  final DateTime startDate;
  final DateTime endDate;

  @override
  List<Object?> get props => [product];

  @override
  Model get toModel => OfferModel(
        product: product.toModel as ProductModel,
        startDate: startDate.toIso8601String(),
        endDate: endDate.toIso8601String(),
      );
}
