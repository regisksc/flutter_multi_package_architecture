import 'package:iupp_core/core.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entity/entities.dart';
import 'models.dart';

part 'product_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductModel extends Model {
  ProductModel({
    required this.id,
    required this.imageUrls,
    required this.description,
    required this.sku,
    required this.sellerName,
    required this.price,
    required this.fakePrice,
    required this.discount,
    required this.points,
    required this.installments,
    required this.variations,
  });

  final int id;
  final List<String> imageUrls;
  final String description;
  final String sku;
  final String sellerName;
  final double price;
  final double fakePrice;
  final double discount;
  final int points;
  final List<InstallmentModel> installments;
  final List<ProductVariationModel>? variations;

  static ProductModel fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  @override
  Map<String, dynamic> get toJson => _$ProductModelToJson(this);

  @override
  Entity get toEntity => ProductEntity(
        id: id,
        imageUrls: imageUrls,
        description: description,
        sku: sku,
        sellerName: sellerName,
        price: price,
        fakePrice: fakePrice,
        discount: discount,
        points: points,
        installments: installments
            .map((installment) => installment.toEntity as InstallmentEntity)
            .toList(),
        variations: variations != null
            ? variations!
                .map(
                    (variation) => variation.toEntity as ProductVariationEntity)
                .toList()
            : [],
      );
}
