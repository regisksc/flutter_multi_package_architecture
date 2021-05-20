import 'error.dart';

class InvalidMapFailure extends Failure {
  InvalidMapFailure(Type type) : super(title: 'Invalid subtype', message: type.toString());
}

class InvalidMapperTypeFailure extends Failure {
  InvalidMapperTypeFailure(Type type) : super(title: 'Invalid generic', message: type.toString());
}
