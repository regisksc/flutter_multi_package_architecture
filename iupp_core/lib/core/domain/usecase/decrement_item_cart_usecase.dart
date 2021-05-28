import '../domain.dart';
import '../repositories/cart_repository_contract.dart';

class DecrementItemCartUsecase {
  DecrementItemCartUsecase(this.repository);

  final CartRepositoryContract repository;

  Future<CartEntity?> call(int cartId, int itemId) async {
    return repository.decrementItem(cartId, itemId);
  }
}
