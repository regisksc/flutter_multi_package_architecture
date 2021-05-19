import 'package:iupp_core/core/data/model/model.dart';

import '../../dependencies/app_dependencies.dart';

abstract class Entity extends Equatable {
  Model get toModel;
}
