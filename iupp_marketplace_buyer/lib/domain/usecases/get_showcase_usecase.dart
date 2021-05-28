
import '../entity/entities.dart';
import '../repositories/i_showcase_repository.dart';

class GetShowcaseUsecase {
  GetShowcaseUsecase(this.repository);

  final IShowcaseRepository repository;

  Future<ShowcaseEntity> call() async {
    return repository.getShowcase();
  }
}
