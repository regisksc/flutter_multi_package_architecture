import 'package:iupp_core/core.dart';

class CalcShippingValueUsecase {
  CalcShippingValueUsecase(this.repository);

  final ICartRepository repository;

  Future<CartEntity?> call(int cartId, String cep) async {
    return repository.calcShipping(cartId, cep);
  }
}
