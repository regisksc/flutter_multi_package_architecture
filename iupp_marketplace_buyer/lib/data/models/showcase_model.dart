import 'package:iupp_core/core.dart';

import '../../domain/entity/entities.dart';
import 'models.dart';

class ShowcaseModel extends Model {
  ShowcaseModel({
    required this.banners,
    required this.categorizedProducts,
    required this.offers,
  });

  final List<BannerModel> banners;
  final List<CategorizedProductsModel> categorizedProducts;
  final List<OfferModel> offers;

  @override
  Model fromJson(Map<String, dynamic> json) => ShowcaseModel(
        banners: [],
        categorizedProducts: [],
        offers: [],
      );

  @override
  Map<String, dynamic> get toJson => throw UnimplementedError();

  @override
  Entity get toEntity => ShowcaseEntity(
        banners:
            banners.map((banner) => banner.toEntity as BannerEntity).toList(),
        categorizedProducts: categorizedProducts
            .map((categorizedProduct) =>
                categorizedProduct.toEntity as CategorizedProductsEntity)
            .toList(),
        offers: offers.map((offer) => offer.toEntity as OfferEntity).toList(),
      );
}
