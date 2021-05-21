import 'package:iupp_checkout/domain/entities/entities.dart';
import 'package:iupp_checkout/domain/repositories/cart_repository_contract.dart';

class CartRepository implements CartRepositoryContract {
  @override
  Future<CartEntity?> getCart(String cartId) async {
    await Future.delayed(const Duration(seconds: 2));
    return CartEntity(
        id: 0,
        total: 5999.20,
        subtotal: 5999.20,
        totalPoints: 2500,
        items: List.empty());
  }

  @override
  Future<CartEntity?> decrementItem(String cartId, String itemId) async {
    return getCart(cartId);
  }

  @override
  Future<CartEntity?> calcShipping(String cartId, String itemId) async {
    return getCart(cartId);
  }

  @override
  Future<CartEntity?> incrementItem(String cartId, String itemId) async {
    return getCart(cartId);
  }
}
