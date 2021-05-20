import 'package:iupp_core/core/dependencies/dependencies.dart';

abstract class Failure extends Equatable {
  const Failure({this.title = 'Erro', this.message});
  final String? title;
  final String? message;
  @override
  List<Object?> get props => [title, message];
}

class UnrecognizedFailure extends Failure {
  const UnrecognizedFailure()
      : super(
          title: 'Erro desconhecido',
          message: 'Ops, algo deu errado. Tente novamente daqui uns minutos',
        );
}

class NoConnectionFailure extends Failure {
  const NoConnectionFailure()
      : super(
          title: 'Falha de conexão',
          message: 'Ops, algo deu errado. Tente novamente daqui uns minutos',
        );
}
