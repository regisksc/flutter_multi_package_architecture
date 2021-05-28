import '../domain.dart';
import '../repositories/cart_repository_contract.dart';

class IncrementItemCartUsecase {
  IncrementItemCartUsecase(this.repository);

  final CartRepositoryContract repository;

  Future<CartEntity?> call(int cartId, int itemId) async {
    return repository.incrementItem(cartId, itemId);
  }
}
