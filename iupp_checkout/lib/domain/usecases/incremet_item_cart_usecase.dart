import '../domain.dart';
import '../entities/entities.dart';

class IncrementItemCartUsecase {
  IncrementItemCartUsecase(this.repository);
  final CartRepositoryContract repository;

  Future<CartEntity?> call(int cartId, int itemId) async {
    return repository.incrementItem(cartId, itemId);
  }
}
