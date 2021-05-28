import '../domain.dart';
import '../repositories/repositories.dart';

class DecrementItemCartUsecase {
  DecrementItemCartUsecase(this.repository);

  final ICartRepository repository;

  Future<CartEntity?> call(int cartId, int itemId) async {
    return repository.decrementItem(cartId, itemId);
  }
}
