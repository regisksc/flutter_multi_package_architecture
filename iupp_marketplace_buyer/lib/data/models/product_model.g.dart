// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return ProductModel(
    id: json['id'] as int,
    imageUrls:
        (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
    description: json['description'] as String,
    sku: json['sku'] as String,
    sellerName: json['sellerName'] as String,
    price: (json['price'] as num).toDouble(),
    fakePrice: (json['fakePrice'] as num).toDouble(),
    discount: (json['discount'] as num).toDouble(),
    points: json['points'] as int,
    installments: (json['installments'] as List<dynamic>)
        .map((e) => InstallmentModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    variations: (json['variations'] as List<dynamic>?)
        ?.map((e) => ProductVariationModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrls': instance.imageUrls,
      'description': instance.description,
      'sku': instance.sku,
      'sellerName': instance.sellerName,
      'price': instance.price,
      'fakePrice': instance.fakePrice,
      'discount': instance.discount,
      'points': instance.points,
      'installments': instance.installments.map((e) => e.toJson()).toList(),
      'variations': instance.variations?.map((e) => e.toJson()).toList(),
    };
