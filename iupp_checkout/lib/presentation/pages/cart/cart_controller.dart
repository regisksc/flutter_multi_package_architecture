import 'package:flutter/foundation.dart';
import 'package:iupp_checkout/data/repositories/repositories.dart';
import 'package:iupp_checkout/domain/domain.dart';
import 'package:iupp_checkout/domain/usecases/get_cart_usecase.dart';

class CartController {
  final cartNotifier = ValueNotifier<CartEntity?>(null);
  set cartState(CartEntity? state) => cartNotifier.value = state;
  CartEntity? get cartState => cartNotifier.value;

  final repository = CartRepository();

  Future<CartEntity?> getCart() async {
    final usecase = GetCartUsecase(repository);
    try {
      final result = await usecase();
      if (result != null) {
        cartState = result;
      }
    } catch (e) {
      print('e');
    }
  }

  bool get isEmpty => cartState?.items.isEmpty ?? true;
}
