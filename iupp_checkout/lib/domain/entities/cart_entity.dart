import 'package:iupp_checkout/domain/entities/item_cart_entity.dart';
import 'package:iupp_checkout/domain/entities/shipping_enrity.dart';

class CartEntity {
  CartEntity({
    required this.id,
    this.shipping,
    required this.total,
    required this.subtotal,
    required this.totalPoints,
    required this.items,
  });

  final int id;
  final double total;
  final double subtotal;
  final int totalPoints;
  final ShippingEntity? shipping;
  final List<ItemCartEntity> items;
}
