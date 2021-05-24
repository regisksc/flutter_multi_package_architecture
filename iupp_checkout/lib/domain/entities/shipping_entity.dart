import 'package:iupp_core/core/data/model/model_abstraction.dart';
import 'package:iupp_core/core/domain/entity/entity.dart';

class ShippingEntity extends Entity {
  ShippingEntity({
    required this.cep,
    required this.expectedDeliveryDays,
    required this.value,
  });

  final String cep;
  final int expectedDeliveryDays;
  final double value;

  @override
  List<Object?> get props => [cep, expectedDeliveryDays, value];

  @override
  Model get toModel => throw UnimplementedError();
}
