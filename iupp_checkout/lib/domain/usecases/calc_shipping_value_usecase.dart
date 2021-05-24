import 'package:iupp_checkout/domain/domain.dart';
import 'package:iupp_checkout/domain/entities/entities.dart';

class CalcShippingValueUsecase {
  CalcShippingValueUsecase(this.repository);
  final CartRepositoryContract repository;

  Future<CartEntity?> call(int cartId, String cep) async {
    return repository.calcShipping(cartId, cep);
  }
}
