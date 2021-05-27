import 'package:iupp_core/core.dart';

import '../../domain/entity/entities.dart';

class InstallmentModel extends Model {
  InstallmentModel({
    required this.number,
    required this.value,
  });

  final int number;
  final double value;

  static Model fromJson(Map<String, dynamic> json) => InstallmentModel(
        number: json['number'] as int,
        value: json['value'] as double,
      );

  @override
  Map<String, dynamic> get toJson => {
        'number': number,
        'value': value,
      };

  @override
  Entity get toEntity => InstallmentEntity(number: number, value: value);
}
