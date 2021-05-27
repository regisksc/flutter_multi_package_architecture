import '../entity/entities.dart';

abstract class IShowcaseRepository {
  Future<ShowcaseEntity> getShowcase();
}
