import 'package:bloc/bloc.dart';
import 'package:iupp_core/core.dart';

import '../../../../domain/repositories/repositories.dart';
import '../../../../domain/usecases/usecases.dart';

part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit(this.repository) : super(ProductDetailsInitial());

  final IProductDetailsRepository repository;

  Future<void> addItemToCart(int cartId, int itemId) async {
    final usecase = AddItemToCartUsecase(repository);
    try {
      emit(ProductDetailsAddingItemToCart());
      await usecase(cartId, itemId);
      emit(ProductDetailsAddItemToCartSuccess());
    } on Exception {
      emit(ProductDetailsAddItemToCartFailed());
    }
  }
}
