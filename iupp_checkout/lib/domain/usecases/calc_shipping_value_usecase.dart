import 'package:iupp_checkout/domain/domain.dart';
import 'package:iupp_checkout/domain/entities/entities.dart';

class CalcShippingValueUsecase {
  CalcShippingValueUsecase(this.repository);
  final CartRepositoryContract repository;

  Future<CartEntity?> call(String cartId, String cep) async {
    await repository.calcShipping(cartId, cep);
  }
}
