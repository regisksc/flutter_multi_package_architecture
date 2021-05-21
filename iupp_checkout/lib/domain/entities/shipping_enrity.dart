class ShippingEntity {
  ShippingEntity({
    required this.cep,
    required this.expectedDeliveryDays,
    required this.value,
  });

  final String cep;
  final int expectedDeliveryDays;
  final double value;
}
