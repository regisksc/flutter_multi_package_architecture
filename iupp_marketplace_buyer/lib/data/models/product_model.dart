import 'package:iupp_core/core.dart';

import '../../domain/entity/entities.dart';
import 'models.dart';

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

  static Model fromMap(Map<String, dynamic> json) {
    final installmentsJsonList = json['installments'] as List;
    final installments = List.generate(
        installmentsJsonList.length,
        (i) => InstallmentModel.fromMap(
                installmentsJsonList[i] as Map<String, dynamic>)
            as InstallmentModel).toList();

    final variationsJsonList = json['variations'] as List;
    final variations = List.generate(
        variationsJsonList.length,
        (i) => ProductVariationModel.fromMap(
                variationsJsonList[i] as Map<String, dynamic>)
            as ProductVariationModel);

    return ProductModel(
      id: json['id'] as int,
      imageUrls: json['imageUrls'] as List<String>,
      description: json['description'] as String,
      sku: json['sku'] as String,
      sellerName: json['sellerName'] as String,
      price: double.parse(json['price'].toString()),
      fakePrice: double.parse(json['fakePrice'].toString()),
      discount: double.parse(json['discount'].toString()),
      points: json['points'] as int,
      installments: installments,
      variations: variations,
    );
  }

  @override
  Model fromJson(Map<String, dynamic> json) => ProductModel.fromMap(json);

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

  @override
  Map<String, dynamic> get toJson => {
        'id': id,
        'imageUrls': imageUrls,
        'description': description,
        'sku': sku,
        'sellerName': sellerName,
        'price': price,
        'fakePrice': fakePrice,
        'discount': discount,
        'points': points,
        'installments':
            installments.map((installments) => installments.toJson).toList(),
        'variations':
            variations?.map((variation) => variation.toJson).toList() ?? [],
      };
}
