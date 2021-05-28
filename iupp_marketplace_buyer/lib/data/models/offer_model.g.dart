// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferModel _$OfferModelFromJson(Map<String, dynamic> json) {
  return OfferModel(
    product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    startDate: json['startDate'] as String,
    endDate: json['endDate'] as String,
  );
}

Map<String, dynamic> _$OfferModelToJson(OfferModel instance) =>
    <String, dynamic>{
      'product': instance.product.toJson(),
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };
