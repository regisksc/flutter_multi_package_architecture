import 'package:iupp_core/core.dart';

abstract class IProductDetailsRepository {
  Future<CartEntity> addItemToCart(int cartId, int itemId);
}
