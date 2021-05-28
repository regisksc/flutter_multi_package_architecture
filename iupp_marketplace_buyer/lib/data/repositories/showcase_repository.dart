import 'package:iupp_core/core.dart';

import '../../domain/entity/entities.dart';
import '../../domain/repositories/i_showcase_repository.dart';
import '../datasources/datasources.dart';

class ShowcaseRepository implements IShowcaseRepository {
  ShowcaseRepository(this.datasource);

  //final ConcreteRemoteDatasource datasource;
  final ShowcaseDatasource datasource;

  Future<ShowcaseEntity> getShowcase() async {
    try {
      /*final showcaseModel = await datasource.fetchOneOutput<ShowcaseModel>(
        httpParams: const HttpRequestParams(
          httpMethod: HttpMethod.get,
          endpoint: '/showcase',
        ),
        modelSerializer: ShowcaseModel.fromJson,
      );*/
      final showcaseModel = await datasource.getShowcaseModel();
      return showcaseModel.toEntity as ShowcaseEntity;
    } on Exception {
      rethrow;
    }
  }
}
