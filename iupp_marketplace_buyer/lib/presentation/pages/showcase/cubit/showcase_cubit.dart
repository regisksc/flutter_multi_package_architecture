import 'package:bloc/bloc.dart';
import 'package:iupp_core/core.dart';
import 'package:meta/meta.dart';

import '../../../../domain/entity/entities.dart';
import '../../../../domain/repositories/i_showcase_repository.dart';
import '../../../../domain/usecases/get_showcase_usecase.dart';

part 'showcase_state.dart';

class ShowcaseCubit extends Cubit<ShowcaseState> {
  ShowcaseCubit({
    required this.repository,
  }) : super(ShowcaseInitial());

  final IShowcaseRepository repository;

  Future<void> getShowcase() async {
    final usecase = GetShowcaseUsecase(repository);
    try {
      emit(ShowcaseLoading());
      final showcase = await usecase();
      emit(ShowcaseLoadedSuccess(showcase));
    } on Exception {
      emit(ShowcaseLoadedFailed());
    }
  }
}
