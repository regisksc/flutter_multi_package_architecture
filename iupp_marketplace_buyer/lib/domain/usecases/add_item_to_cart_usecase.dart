import 'package:iupp_core/core.dart';

import '../repositories/repositories.dart';

class AddItemToCartUsecase {
  AddItemToCartUsecase(this.repository);

  final IProductDetailsRepository repository;

  Future<CartEntity> call(int cartId, int itemId) async {
    return repository.addItemToCart(cartId, itemId);
  }
}
