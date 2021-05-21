import 'package:iupp_checkout/domain/domain.dart';
import 'package:iupp_checkout/domain/entities/entities.dart';

class GetCartUsecase {
  GetCartUsecase(this.repository);
  final CartRepositoryContract repository;

  Future<CartEntity?> call(String cartId) async {
    await repository.getCart(cartId);
  }
}
