part of 'showcase_cubit.dart';

@immutable
abstract class ShowcaseState extends Equatable {
  ShowcaseState({required this.showcase});

  ShowcaseEntity? showcase;

  @override
  List<Object?> get props => [showcase];
}

class ShowcaseInitial extends ShowcaseState {
  ShowcaseInitial() : super(showcase: null);
}

class ShowcaseLoadedSuccess extends ShowcaseState {
  ShowcaseLoadedSuccess(ShowcaseEntity showcase)
      : super(showcase: showcase);
}

class ShowcaseLoadedFailed extends ShowcaseState {
  ShowcaseLoadedFailed() : super(showcase: null);
}

class ShowcaseLoading extends ShowcaseState {
  ShowcaseLoading() : super(showcase: null);
}
