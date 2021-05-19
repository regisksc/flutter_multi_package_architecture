import 'seller_entity.dart';

class ItemCartEntity {
  ItemCartEntity({
    required this.photoUrl,
    required this.value,
    required this.description,
    required this.points,
    required this.seller,
  });

  final String photoUrl;
  final String value;
  final String description;
  final String points;
  final Seller seller;
}
