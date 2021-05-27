import 'package:iupp_core/core.dart';

import '../../data/models/models.dart';
import 'entities.dart';

class ShowcaseEntity extends Entity {
  ShowcaseEntity({
    required this.banners,
    required this.categorizedProducts,
    required this.offers,
  });

  final List<BannerEntity> banners;
  final List<CategorizedProductsEntity> categorizedProducts;
  final List<OfferEntity> offers;

  @override
  List<Object?> get props => [
        banners,
        categorizedProducts,
        offers,
      ];

  @override
  Model get toModel => ShowcaseModel(
        banners: [],
        categorizedProducts: [],
        offers: [],
      );
}
