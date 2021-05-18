abstract class Failure {
  const Failure({this.title = 'Erro', this.message});
  final String? title;
  final String? message;
}

class UnrecognizedFailure extends Failure {
  const UnrecognizedFailure()
      : super(
          title: 'Erro desconhecido',
          message: 'Ops, algo deu errado. Tente novamente daqui uns minutos',
        );
}

class NoConnectionFailure extends Failure {
  NoConnectionFailure()
      : super(
          title: 'Falha de conexão',
          message: 'Ops, algo deu errado. Tente novamente daqui uns minutos',
        );
}
