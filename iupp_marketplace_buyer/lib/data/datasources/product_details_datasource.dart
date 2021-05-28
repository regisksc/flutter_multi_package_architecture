import 'package:iupp_core/core.dart';

class ProductDetailsDatasource {
  Future<CartModel> addItemToCart(int cartId, int itemId) async {
    await Future.delayed(const Duration(seconds: 2));
    return CartModel(
      id: 0,
      total: 100,
      subtotal: 200,
      totalPoints: 1,
      items: [],
    );
  }
}
