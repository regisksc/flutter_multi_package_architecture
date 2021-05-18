import '../core.dart';

abstract class HttpFailure extends Failure {
  const HttpFailure(
    this.code, {
    String? message,
    String? title,
  }) : super(message: message, title: title);
  final int? code;
}

class InvalidMethodFailure extends HttpFailure {
  const InvalidMethodFailure({String? message, int? code})
      : super(
          code,
          message: message ?? ErrorStrings.invalidMethod,
          title: '$code Falha ao processar a requisição',
        );
}

class BadRequestFailure extends HttpFailure {
  const BadRequestFailure({String? message, int? code})
      : super(
          code,
          message: message ?? ErrorStrings.badRequest,
          title: '$code Falha ao processar a requisição',
        );
}

class UnauthorizedFailure extends HttpFailure {
  const UnauthorizedFailure({String? message, int? code})
      : super(
          code,
          message: message ?? ErrorStrings.unauthorized,
          title: '$code Erro de acesso',
        );
}

class PaymentRequiredFailure extends HttpFailure {
  const PaymentRequiredFailure({String? message, int? code})
      : super(
          code,
          message: message ?? ErrorStrings.unauthorized,
          title: '$code Erro de acesso',
        );
}

class ForbiddenFailure extends HttpFailure {
  const ForbiddenFailure({String? message, int? code})
      : super(
          code,
          message: message ?? ErrorStrings.forbidden,
          title: '$code Não autorizado',
        );
}

class NotFoundFailure extends HttpFailure {
  const NotFoundFailure({String? message, int? code})
      : super(
          code,
          message: message ?? ErrorStrings.notFound,
          title: '$code Não encontrado',
        );
}

class ServerFailure extends HttpFailure {
  const ServerFailure({String? message, int? code})
      : super(
          code,
          message: message ?? ErrorStrings.server,
          title: '$code Problemas de servidor',
        );
}
