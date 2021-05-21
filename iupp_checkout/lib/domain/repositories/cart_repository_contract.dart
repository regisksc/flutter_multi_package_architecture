import 'package:iupp_checkout/domain/domain.dart';

abstract class CartRepositoryContract {
  Future<CartEntity?> getCart(String cartId);
  Future<CartEntity?> incrementItem(String cartId, String itemId);
  Future<CartEntity?> decrementItem(String cartId, String itemId);
  Future<CartEntity?> calcShipping(String cartId, String cep);
}
