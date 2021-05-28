// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'showcase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowcaseModel _$ShowcaseModelFromJson(Map<String, dynamic> json) {
  return ShowcaseModel(
    banners: (json['banners'] as List<dynamic>?)
        ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    categorizedProducts: (json['categorizedProducts'] as List<dynamic>?)
        ?.map(
            (e) => CategorizedProductsModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    offers: (json['offers'] as List<dynamic>?)
        ?.map((e) => OfferModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ShowcaseModelToJson(ShowcaseModel instance) =>
    <String, dynamic>{
      'banners': instance.banners?.map((e) => e.toJson()).toList(),
      'categorizedProducts':
          instance.categorizedProducts?.map((e) => e.toJson()).toList(),
      'offers': instance.offers?.map((e) => e.toJson()).toList(),
    };
