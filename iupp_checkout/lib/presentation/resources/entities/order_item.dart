class OrderItem {
  const OrderItem({
    required this.imageURL,
    required this.description,
    required this.costInReal,
    required this.costInPoints,
    required this.deliveredBy,
    required this.expectedDelivery,
  });

  final String description;
  final double costInReal;
  final String imageURL;
  final double costInPoints;
  final String deliveredBy;
  final String expectedDelivery;
}

const orderItems = [
  OrderItem(
    imageURL: 'https://www.blitzmicro.eu/11082-medium_default/AP-MGDF3QLA.jpg',
    description: 'iPhone 12 Azul, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP',
    costInReal: 5999.20,
    costInPoints: 2500,
    deliveredBy: 'Entrega 01 por Magazine Luiza',
    expectedDelivery: 'Em até 3 dias úteis²',
  ),
  OrderItem(
    imageURL: 'https://www.blitzmicro.eu/11082-medium_default/AP-MGDF3QLA.jpg',
    description: 'Smartphone Motorola Moto G9 Play 64GB Duos 6.5" 4G Câm 48+2+2MP',
    costInReal: 1855.9,
    costInPoints: 733,
    deliveredBy: 'Entrega 02 por Top Store',
    expectedDelivery: 'Em até 8 dias úteis²',
  ),
];
