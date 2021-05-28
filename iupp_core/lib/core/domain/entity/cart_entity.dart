import '../../data/model/model_abstraction.dart';

import 'entity.dart';
import 'item_cart_entity.dart';
import 'shipping_entity.dart';

class CartEntity extends Entity {
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

  @override
  List<Object?> get props => [items, id, shipping, total, subtotal];

  @override
  Model get toModel => throw UnimplementedError();

  CartEntity copyWith({
    int? id,
    ShippingEntity? shipping,
    double? total,
    double? subtotal,
    int? totalPoints,
    List<ItemCartEntity>? items,
  }) {
    return CartEntity(
      id: id ?? this.id,
      total: total ?? this.total,
      subtotal: subtotal ?? this.subtotal,
      totalPoints: totalPoints ?? this.totalPoints,
      shipping: shipping ?? this.shipping,
      items: items ?? this.items,
    );
  }
}
