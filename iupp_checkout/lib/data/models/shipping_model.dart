import 'dart:convert';

import 'package:iupp_core/core/data/model/model_abstraction.dart';
import 'package:iupp_core/core/domain/entity/entity.dart';

import '../../domain/entities/shipping_entity.dart';

class ShippingModel extends Model {
  ShippingModel({
    required this.cep,
    required this.expectedDeliveryDays,
    required this.value,
  });

  factory ShippingModel.fromMap(Map<String, dynamic> map) {
    return ShippingModel(
      cep: map['cep'] as String,
      expectedDeliveryDays: map['expectedDeliveryDays'] as int,
      value: map['value'] as double,
    );
  }

  final String cep;
  final int expectedDeliveryDays;
  final double value;

  @override
  ShippingModel fromJson(Map<String, dynamic> json) {
    return ShippingModel.fromMap(json);
  }

  @override
  Entity get toEntity => ShippingEntity(
      cep: cep, expectedDeliveryDays: expectedDeliveryDays, value: value);

  @override
  Map<String, dynamic> get toJson => {
        'cep': cep,
        'expectedDeliveryDays': expectedDeliveryDays,
        'value': value,
      };
}
