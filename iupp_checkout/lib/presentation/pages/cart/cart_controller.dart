import 'package:iupp_checkout/data/repositories/repositories.dart';
import 'package:iupp_checkout/domain/domain.dart';
import 'package:iupp_checkout/domain/usecases/get_cart_usecase.dart';

class CartController {
  final repository = CartRepository();
  late CartEntity cartEntity;

  Future<CartEntity?> getCart() async {
    final usecase = GetCartUsecase(repository);
    try {
      final result = await usecase();
      if (result != null) {
        cartEntity = result;
      }
    } catch (e) {
      print('e');
    }
  }

  bool get isEmpty => cartEntity.items.isEmpty;
}
