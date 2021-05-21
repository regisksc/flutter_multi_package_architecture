import 'package:iupp_checkout/domain/domain.dart';
import 'package:iupp_checkout/domain/entities/entities.dart';

class IncrementItemCartUsecase {
  IncrementItemCartUsecase(this.repository);
  final CartRepositoryContract repository;

  Future<CartEntity?> call(String cartId, String itemId) async {
    await repository.incrementItem(cartId, itemId);
  }
}
