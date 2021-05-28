import '../../../core.dart';

abstract class Usecase<Output, Input> /* throws Failure */ {
  Future<Output> call(Input input);
}

class NoInput extends Equatable {
  @override
  List<Object?> get props => [];
}
