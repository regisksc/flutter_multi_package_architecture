import '../domain.dart';
import '../entities/entities.dart';

class GetCartUsecase {
  GetCartUsecase(this.repository);
  final CartRepositoryContract repository;

  Future<CartEntity?> call(int cartId) async {
    return repository.getCart(cartId);
  }
}
