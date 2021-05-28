import 'dart:math';

import 'package:iupp_core/core.dart';

class CartRepository implements CartRepositoryContract {
  CartRepository()
      : cart = CartEntity(
          id: 0,
          total: 5999.20,
          subtotal: 5999.20,
          totalPoints: 2500,
          items: /* const [] */ [
            ItemCartEntity(
              id: 1,
              quantity: 1,
              photoUrl:
                  'https://a-static.mlcdn.com.br/618x463/iphone-12-apple-64gb-azul-61-cam-dupla-12mp-ios/magazineluiza/155597900/42720757e2ad2307009d75f22d457e80.jpg',
              price: 5999.20,
              description:
                  'iPhone 12 Preto, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP',
              points: 2500,
              seller: SellerEntity('Magazine Luíza'),
            ),
            ItemCartEntity(
              id: 2,
              quantity: 1,
              photoUrl:
                  'https://a-static.mlcdn.com.br/618x463/iphone-12-apple-64gb-azul-61-cam-dupla-12mp-ios/magazineluiza/155597900/42720757e2ad2307009d75f22d457e80.jpg',
              price: 5999.20,
              description:
                  'iPhone 12 Preto, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP',
              points: 2500,
              seller: SellerEntity('Magazine Luíza'),
            ),
          ],
        );
  CartEntity cart;

  @override
  Future<CartEntity> getCart(int cartId) async {
    await Future.delayed(const Duration(seconds: 1));
    return cart;
  }

  @override
  Future<CartEntity> decrementItem(int cartId, int itemId) async {
    double newTotal = 0;
    int newPoints = 0;
    final newItems = cart.items.map((item) {
      if (item.id == itemId) {
        final newItem = item.copyWith(quantity: item.quantity - 1);
        newTotal += newItem.total;
        newPoints += newItem.totalPoints;
        return newItem;
      }
      newTotal += item.total;
      newPoints += item.totalPoints;
      return item;
    }).toList();
    cart = cart.copyWith(
      items: newItems,
      subtotal: newTotal,
      total: newTotal,
      totalPoints: newPoints,
    );
    await Future.delayed(const Duration(seconds: 1));
    return cart;
  }

  @override
  Future<CartEntity> calcShipping(int cartId, String cep) async {
    final isShippingFree = Random().nextBool();
    final ShippingEntity shipping = ShippingEntity(
        cep: cep, expectedDeliveryDays: 5, value: isShippingFree ? 0 : 9.90);

    double total = cart.total;
    if (cart.shipping != null) {
      total = total - cart.shipping!.value + shipping.value;
    }
    cart = cart.copyWith(shipping: shipping, subtotal: total, total: total);
    await Future.delayed(const Duration(seconds: 1));
    return cart;
  }

  @override
  Future<CartEntity> incrementItem(int cartId, int itemId) async {
    double newTotal = 0;
    int newPoints = 0;
    final newItems = cart.items.map((item) {
      if (item.id == itemId) {
        final newItem = item.copyWith(quantity: item.quantity + 1);
        newTotal += newItem.total;
        newPoints += newItem.totalPoints;
        return newItem;
      }
      newTotal += item.total;
      newPoints += item.totalPoints;
      return item;
    }).toList();
    cart = cart.copyWith(
      items: newItems,
      subtotal: newTotal,
      total: newTotal,
      totalPoints: newPoints,
    );
    await Future.delayed(const Duration(seconds: 1));
    return cart;
  }
}
