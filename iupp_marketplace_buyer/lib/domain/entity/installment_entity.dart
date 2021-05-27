import 'package:iupp_core/core.dart';

import '../../data/models/models.dart';

class InstallmentEntity extends Entity {
  InstallmentEntity({
    required this.number,
    required this.value,
  });

  final int number;
  final double value;

  @override
  List<Object?> get props => [number, value];

  @override
  Model get toModel => InstallmentModel(
        number: number,
        value: value,
      );
}
