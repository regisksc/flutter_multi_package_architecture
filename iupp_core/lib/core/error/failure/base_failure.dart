import 'package:iupp_core/core/dependencies/dependencies.dart';

abstract class BaseFailure extends Equatable {
  const BaseFailure({this.title = 'Erro', this.message});

  final String? title;
  final String? message;

  @override
  List<Object?> get props => [title, message];
}