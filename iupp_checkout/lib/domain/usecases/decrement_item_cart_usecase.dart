import 'package:iupp_checkout/domain/domain.dart';
import 'package:iupp_checkout/domain/entities/entities.dart';

class DecrementItemCartUsecase {
  DecrementItemCartUsecase(this.repository);
  final CartRepositoryContract repository;

  Future<CartEntity?> call(int cartId, int itemId) async {
    return repository.decrementItem(cartId, itemId);
  }
}
