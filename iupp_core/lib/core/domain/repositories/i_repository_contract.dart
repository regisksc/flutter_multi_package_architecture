import '../domain.dart';

abstract class ICartRepository {
  Future<CartEntity> getCart(int cartId);
  Future<CartEntity> incrementItem(int cartId, int itemId);
  Future<CartEntity> decrementItem(int cartId, int itemId);
  Future<CartEntity> calcShipping(int cartId, String cep);
}
