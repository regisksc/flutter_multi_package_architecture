import '../domain.dart';
import '../repositories/repositories.dart';

class IncrementItemCartUsecase {
  IncrementItemCartUsecase(this.repository);

  final ICartRepository repository;

  Future<CartEntity?> call(int cartId, int itemId) async {
    return repository.incrementItem(cartId, itemId);
  }
}
