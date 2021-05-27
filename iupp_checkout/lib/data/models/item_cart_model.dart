import 'dart:convert';

import 'package:iupp_core/core/data/model/model_abstraction.dart';
import 'package:iupp_core/core/domain/entity/entity.dart';

import '../../domain/entities/item_cart_entity.dart';
import '../../domain/entities/seller_entity.dart';
import 'seller_model.dart';

class ItemCartModel extends Model {
  ItemCartModel({
    required this.id,
    required this.photoUrl,
    required this.quantity,
    required this.price,
    required this.description,
    required this.points,
    required this.seller,
  })  : total = price * quantity,
        totalPoints = points * quantity;

  @override
  factory ItemCartModel.fromMap(Map<String, dynamic> map) {
    return ItemCartModel(
      photoUrl: map['photoUrl'] as String,
      price: map['price'] as double,
      description: map['description'] as String,
      points: map['points'] as int,
      quantity: map['quantity'] as int,
      seller: SellerModel(map['seller'] as String),
      id: map['id'] as int,
    );
  }

  final String photoUrl;
  final double price;
  final double total;
  final String description;
  final int points;
  final int totalPoints;
  final int quantity;
  final SellerModel seller;
  final int id;

  @override
  ItemCartEntity get toEntity => ItemCartEntity(
        id: id,
        photoUrl: photoUrl,
        quantity: quantity,
        price: price,
        description: description,
        points: points,
        seller: seller.toEntity as SellerEntity,
      );

  @override
  Map<String, dynamic> get toJson => {
        'photoUrl': photoUrl,
        'price': price,
        'total': total,
        'description': description,
        'points': points,
        'totalPoints': totalPoints,
        'quantity': quantity,
        'seller': seller.toJson,
        'id': id,
      };

  @override
  ItemCartModel fromJson(Map<String, dynamic> json) {
    return ItemCartModel.fromMap(json);
  }
}
