import 'package:iupp_core/core/data/model/model_abstraction.dart';
import 'package:iupp_core/core/dependencies/dependencies.dart';

class ModelMock extends Mock with EquatableMixin implements Model {
  dynamic field;

  @override
  ModelMock fromJson(Map<String, dynamic> json) {
    field = json['field'];
    return this;
  }

  @override
  List<Object?> get props => [field];
}
