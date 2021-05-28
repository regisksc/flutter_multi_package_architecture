import 'package:flutter/foundation.dart';
import 'package:iupp_core/core.dart';

import '../../../data/repositories/repositories.dart';
import '../../../domain/usecases/usecases.dart';

class CartController {
  CartController() : repository = CartRepository();
  final CartRepositoryContract repository;

  final cartNotifier = ValueNotifier<CartEntity?>(null);
  set cartState(CartEntity? state) => cartNotifier.value = state;
  CartEntity? get cartState => cartNotifier.value;

  Future<void> getCart() async {
    try {
      final usecase = GetCartUsecase(repository);
      final result = await usecase(0);
      if (result != null) {
        cartState = result;
      }
    } catch (e) {
      debugPrint('controller error $e');
    }
  }

  Future<void> incrementItem(int itemId) async {
    try {
      final usecase = IncrementItemCartUsecase(repository);
      final result = await usecase(cartState!.id, itemId);
      if (result != null) {
        cartState = result;
      }
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> decrementItem(int itemId) async {
    try {
      final usecase = DecrementItemCartUsecase(repository);
      final result = await usecase(cartState!.id, itemId);
      if (result != null) {
        cartState = result;
      }
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> calcShippingValue(String cep) async {
    try {
      final usecase = CalcShippingValueUsecase(repository);
      final result = await usecase(cartState!.id, cep);
      if (result != null) {
        cartState = result;
      }
    } catch (e) {
      debugPrint('$e');
    }
  }

  bool get isEmpty => cartState?.items.isEmpty ?? true;

  double? get shippingValue => cartState?.shipping?.value;

  int? get expectedDeliveryDays => cartState?.shipping?.expectedDeliveryDays;
}
