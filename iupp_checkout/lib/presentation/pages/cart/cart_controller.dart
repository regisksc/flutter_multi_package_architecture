import 'package:flutter/foundation.dart';
import 'package:iupp_checkout/data/repositories/repositories.dart';
import 'package:iupp_checkout/domain/domain.dart';
import 'package:iupp_checkout/domain/usecases/calc_shipping_value_usecase.dart';
import 'package:iupp_checkout/domain/usecases/decrement_item_cart_usecase.dart';
import 'package:iupp_checkout/domain/usecases/get_cart_usecase.dart';
import 'package:iupp_checkout/domain/usecases/incremete_item_cart_usecase.dart';

class CartController {
  CartController({this.cartId = 'cartId'});
  final repository = CartRepository();
  final String cartId;

  final cartNotifier = ValueNotifier<CartEntity?>(null);
  set cartState(CartEntity? state) => cartNotifier.value = state;
  CartEntity? get cartState => cartNotifier.value;

  Future<CartEntity?> getCart() async {
    final usecase = GetCartUsecase(repository);
    try {
      final result = await usecase(cartId);
      if (result != null) {
        cartState = result;
      }
    } catch (e) {
      debugPrint('e');
    }
  }

  Future<CartEntity?> incrementItem(String itemId) async {
    final usecase = IncrementItemCartUsecase(repository);
    try {
      final result = await usecase(cartId, itemId);
      if (result != null) {
        cartState = result;
      }
    } catch (e) {
      debugPrint('e');
    }
  }

  Future<CartEntity?> decrementItem(String itemId) async {
    final usecase = DecrementItemCartUsecase(repository);
    try {
      final result = await usecase(cartId, itemId);
      if (result != null) {
        cartState = result;
      }
    } catch (e) {
      debugPrint('e');
    }
  }

  Future<CartEntity?> calShippingValue(String cep) async {
    final usecase = CalcShippingValueUsecase(repository);
    try {
      final result = await usecase(cartId, cep);
      if (result != null) {
        cartState = result;
      }
    } catch (e) {
      debugPrint('e');
    }
  }

  bool get isEmpty => cartState?.items.isEmpty ?? true;

  double? get shippingValue => 200; //cartState?.shipping?.value;

  int? get expectedDeliveryDays =>
      2; //cartState?.shipping?.expectedDeliveryDays;
}
