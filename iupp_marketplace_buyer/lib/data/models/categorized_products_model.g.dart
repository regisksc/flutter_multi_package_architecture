// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorized_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategorizedProductsModel _$CategorizedProductsModelFromJson(
    Map<String, dynamic> json) {
  return CategorizedProductsModel(
    category: json['category'] as String,
    products: (json['products'] as List<dynamic>)
        .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CategorizedProductsModelToJson(
        CategorizedProductsModel instance) =>
    <String, dynamic>{
      'category': instance.category,
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
