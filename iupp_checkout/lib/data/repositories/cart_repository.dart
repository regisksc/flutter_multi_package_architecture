import 'package:iupp_checkout/domain/entities/entities.dart';
import 'package:iupp_checkout/domain/repositories/cart_repository_contract.dart';

class CartRepository implements CartRepositoryContract {
  @override
  Future<CartEntity?> addItem() async {
    return getCart();
  }

  @override
  Future<CartEntity?> getCart() async {
    await Future.delayed(const Duration(seconds: 2));
    return CartEntity(
        id: 0,
        total: 5999.20,
        subtotal: 5999.20,
        totalPoints: 2500,
        items: List.empty());
  }

  @override
  Future<CartEntity?> removeItem() async {
    return getCart();
  }

  @override
  Future<CartEntity?> setCep() async {
    return getCart();
  }

  @override
  Future<CartEntity?> updateItem() async {
    return getCart();
  }

  @override
  Future<CartEntity?> create() async {
    return getCart();
  }
}
