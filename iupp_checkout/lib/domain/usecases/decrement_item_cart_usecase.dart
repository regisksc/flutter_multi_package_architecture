import '../domain.dart';
import '../entities/entities.dart';

class DecrementItemCartUsecase {
  DecrementItemCartUsecase(this.repository);
  final CartRepositoryContract repository;

  Future<CartEntity?> call(int cartId, int itemId) async {
    return repository.decrementItem(cartId, itemId);
  }
}
