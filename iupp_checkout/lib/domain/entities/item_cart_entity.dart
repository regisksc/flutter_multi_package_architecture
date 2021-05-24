import 'package:iupp_core/core/data/model/model_abstraction.dart';
import 'package:iupp_core/core/domain/entity/entity.dart';

import 'seller_entity.dart';

class ItemCartEntity extends Entity {
  ItemCartEntity({
    required this.id,
    required this.photoUrl,
    required this.quantity,
    required this.price,
    required this.description,
    required this.points,
    required this.seller,
  })   : total = price * quantity,
        totalPoints = points * quantity;

  final String photoUrl;
  final double price;
  final double total;
  final String description;
  final int points;
  final int totalPoints;
  final int quantity;
  final Seller seller;
  final int id;

  ItemCartEntity copyWith({
    String? photoUrl,
    int? quantity,
    double? price,
    String? description,
    int? points,
    Seller? seller,
  }) {
    return ItemCartEntity(
      id: id,
      photoUrl: photoUrl ?? this.photoUrl,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      description: description ?? this.description,
      points: points ?? this.points,
      seller: seller ?? this.seller,
    );
  }

  @override
  List<Object?> get props => [id, quantity, price];

  @override
  Model get toModel => throw UnimplementedError();
}
