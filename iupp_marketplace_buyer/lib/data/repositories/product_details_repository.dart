import 'package:iupp_core/core.dart';

import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';

class ProductDetailsRepository implements IProductDetailsRepository {
  ProductDetailsRepository(this.datasource);

  //final ConcreteRemoteDatasource datasource;
  final ProductDetailsDatasource datasource;

  @override
  Future<CartEntity> addItemToCart(int cartId, int itemId) async {
    try {
      /*final showcaseModel = await datasource.fetchOneOutput<ShowcaseModel>(
        httpParams: const HttpRequestParams(
          httpMethod: HttpMethod.get,
          endpoint: '/showcase',
        ),
        model: ShowcaseModel(),
      );*/
      final cartModel = await datasource.addItemToCart(cartId, itemId);
      return cartModel.toEntity as CartEntity;
    } on Exception {
      rethrow;
    }
  }
}
