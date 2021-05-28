import '../../../core.dart';

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
