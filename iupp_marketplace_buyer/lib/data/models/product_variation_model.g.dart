// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductVariationModel _$ProductVariationModelFromJson(
    Map<String, dynamic> json) {
  return ProductVariationModel(
    name: json['name'] as String,
    value: json['value'] as String,
    products: (json['products'] as List<dynamic>)
        .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ProductVariationModelToJson(
        ProductVariationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
