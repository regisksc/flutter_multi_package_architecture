import '../../../core.dart';
import '../repositories/repositories.dart';

class GetCartUsecase {
  GetCartUsecase(this.repository);

  final ICartRepository repository;

  Future<CartEntity?> call(int cartId) async {
    return repository.getCart(cartId);
  }
}
