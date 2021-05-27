import 'package:iupp_core/core.dart';

import '../../data/models/models.dart';

class ProductEntity extends Entity {
  ProductEntity({
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

  @override
  List<Object?> get props => [id];

  @override
  Model get toModel => ProductModel(
        id: id,
        imageUrls: imageUrls,
        description: description,
        sku: sku,
        sellerName: sellerName,
        price: price,
        fakePrice: fakePrice,
        discount: discount,
        points: points,
        installments: [],
        variations: [],
      );
}
