import 'package:iupp_checkout/domain/domain.dart';

abstract class CartRepositoryContract {
  Future<CartEntity?> create();
  Future<CartEntity?> getCart();
  Future<CartEntity?> updateItem();
  Future<CartEntity?> removeItem();
  Future<CartEntity?> setCep();
  Future<CartEntity?> addItem();
}
