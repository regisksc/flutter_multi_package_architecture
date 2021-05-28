import '../../../core.dart';
import '../repositories/cart_repository_contract.dart';

class GetCartUsecase {
  GetCartUsecase(this.repository);

  final CartRepositoryContract repository;

  Future<CartEntity?> call(int cartId) async {
    return repository.getCart(cartId);
  }
}
