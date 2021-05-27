import 'package:iupp_core/core.dart';

import '../../data/models/seller_model.dart';

class SellerEntity extends Entity {
  SellerEntity(this.name);

  final String name;

  @override
  List<Object?> get props => [name];

  @override
  SellerModel get toModel => SellerModel(name);
}
