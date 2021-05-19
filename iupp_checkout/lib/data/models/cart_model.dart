class CartModel {
  CartModel({
    this.id = 1,
    this.shipping,
    required this.total,
    required this.subtotal,
    required this.totalPoints,
    required this.items,
  });
  final int id;
  final Shipping? shipping;
  final double total;
  final double subtotal;
  final double totalPoints;
  final List<Item> items;
}

class Shipping {
  Shipping({required this.cep, required this.expectedDeliveryDate});
  final String cep;
  final String expectedDeliveryDate;
}

class Item {
  Item({
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

class Seller {
  Seller(this.name);
  final String name;
}
