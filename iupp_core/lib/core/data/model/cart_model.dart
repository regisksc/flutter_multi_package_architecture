import '../../domain/domain.dart';
import '../../domain/entity/entity_abstraction.dart';
import 'item_cart_model.dart';
import 'model_abstraction.dart';
import 'shipping_model.dart';

class CartModel extends Model {
  CartModel({
    required this.id,
    this.shipping,
    required this.total,
    required this.subtotal,
    required this.totalPoints,
    required this.items,
  });

  factory CartModel.fromMap(Map<String, dynamic> map) {
    return CartModel(
      id: map['id'] as int,
      total: map['total'] as double,
      subtotal: map['subtotal'] as double,
      totalPoints: map['totalPoints'] as int,
      shipping: ShippingModel.fromMap(map['shipping'] as Map<String, dynamic>),
      items: map['items']
              ?.map((x) => ItemCartModel.fromMap(x as Map<String, dynamic>))
          as List<ItemCartModel>,
    );
  }

  final int id;
  final double total;
  final double subtotal;
  final int totalPoints;
  final ShippingModel? shipping;
  final List<ItemCartModel> items;

  @override
  CartModel fromJson(Map<String, dynamic> map) {
    return CartModel.fromMap(map);
  }

  @override
  Entity get toEntity => CartEntity(
        id: id,
        total: total,
        subtotal: subtotal,
        totalPoints: totalPoints,
        items: items.map((e) => e.toEntity).toList(),
      );

  @override
  Map<String, dynamic> get toJson => toMap();

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'total': total,
      'subtotal': subtotal,
      'totalPoints': totalPoints,
      'shipping': shipping?.toJson,
      'items': items.map((x) => x.toJson).toList(),
    };
  }
}
