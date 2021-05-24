import 'package:iupp_checkout/domain/domain.dart';
import 'package:iupp_checkout/domain/entities/entities.dart';

class GetCartUsecase {
  GetCartUsecase(this.repository);
  final CartRepositoryContract repository;

  Future<CartEntity?> call(int cartId) async {
    return repository.getCart(cartId);
  }
}
