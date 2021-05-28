import '../../../core.dart';

class ItemCartEntity extends Entity {
  ItemCartEntity({
    required this.id,
    required this.photoUrl,
    required this.quantity,
    required this.price,
    required this.description,
    required this.points,
    required this.seller,
  })  : total = price * quantity,
        totalPoints = points * quantity;

  final String photoUrl;
  final double price;
  final double total;
  final String description;
  final int points;
  final int totalPoints;
  final int quantity;
  final SellerEntity seller;
  final int id;

  ItemCartEntity copyWith({
    String? photoUrl,
    int? quantity,
    double? price,
    String? description,
    int? points,
    SellerEntity? seller,
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
  Model get toModel => ItemCartModel(
        id: id,
        photoUrl: photoUrl,
        quantity: quantity,
        price: price,
        description: description,
        points: points,
        seller: seller.toModel,
      );
}
