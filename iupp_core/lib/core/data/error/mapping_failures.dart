import '../../../core.dart';

class InvalidMapFailure extends BaseFailure {
  InvalidMapFailure(Type type) : super(title: 'Invalid subtype', message: type.toString());
}

class InvalidMapperTypeFailure extends BaseFailure {
  InvalidMapperTypeFailure(Type type) : super(title: 'Invalid generic', message: type.toString());
}
