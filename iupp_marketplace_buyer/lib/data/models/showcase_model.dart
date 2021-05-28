import 'package:iupp_core/core.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entity/entities.dart';
import 'models.dart';

part 'showcase_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ShowcaseModel extends Model {
  ShowcaseModel({
    this.banners,
    this.categorizedProducts,
    this.offers,
  });

  final List<BannerModel>? banners;
  final List<CategorizedProductsModel>? categorizedProducts;
  final List<OfferModel>? offers;

  static ShowcaseModel fromJson(Map<String, dynamic> json) =>
      _$ShowcaseModelFromJson(json);

  @override
  Map<String, dynamic> get toJson => _$ShowcaseModelToJson(this);

  @override
  Entity get toEntity => ShowcaseEntity(
        banners:
            banners!.map((banner) => banner.toEntity as BannerEntity).toList(),
        categorizedProducts: categorizedProducts!
            .map((categorizedProduct) =>
                categorizedProduct.toEntity as CategorizedProductsEntity)
            .toList(),
        offers: offers!.map((offer) => offer.toEntity as OfferEntity).toList(),
      );
}
