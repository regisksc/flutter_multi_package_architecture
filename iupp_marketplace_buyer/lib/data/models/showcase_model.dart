import 'package:iupp_core/core.dart';

import '../../domain/entity/entities.dart';
import 'models.dart';

class ShowcaseModel extends Model {
  ShowcaseModel({
    this.banners,
    this.categorizedProducts,
    this.offers,
  });

  final List<BannerModel>? banners;
  final List<CategorizedProductsModel>? categorizedProducts;
  final List<OfferModel>? offers;

  @override
  Model fromJson(Map<String, dynamic> json) {
    final bannersJsonList = json['banners'] as List<Map<String, dynamic>>;
    final banners = List.generate(bannersJsonList.length,
        (i) => BannerModel.fromMap(bannersJsonList[i]) as BannerModel).toList();

    final categorizedProductsJsonList =
        json['categorizedProducts'] as List<Map<String, dynamic>>;
    final categorizedProducts = List.generate(
        categorizedProductsJsonList.length,
        (i) => CategorizedProductsModel.fromMap(categorizedProductsJsonList[i])
            as CategorizedProductsModel).toList();

    final offersJsonList = json['offers'] as List<Map<String, dynamic>>;
    final offers = List.generate(offersJsonList.length,
        (i) => OfferModel.fromMap(offersJsonList[i]) as OfferModel);

    return ShowcaseModel(
      banners: banners,
      categorizedProducts: categorizedProducts,
      offers: offers,
    );
  }

  @override
  Map<String, dynamic> get toJson => throw UnimplementedError();

  @override
  Entity get toEntity => ShowcaseEntity(
        banners: banners != null
            ? banners!.map((banner) => banner.toEntity as BannerEntity).toList()
            : [],
        categorizedProducts: categorizedProducts != null
            ? categorizedProducts!
                .map((categorizedProduct) =>
                    categorizedProduct.toEntity as CategorizedProductsEntity)
                .toList()
            : [],
        offers: offers != null
            ? offers!.map((offer) => offer.toEntity as OfferEntity).toList()
            : [],
      );
}
