import 'package:iupp_core/core/data/model/model_abstraction.dart';
import 'package:mocktail/mocktail.dart';

class ModelMock extends Mock implements Model {
  late final dynamic field;
  @override
  ModelMock fromJson(Map<String, dynamic> json) {
    field = json['field'];
    return this;
  }
}
