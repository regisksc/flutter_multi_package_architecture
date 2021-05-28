import '../../../core.dart';

class SellerEntity extends Entity {
  SellerEntity(this.name);

  final String name;

  @override
  List<Object?> get props => [name];

  @override
  SellerModel get toModel => SellerModel(name);
}
