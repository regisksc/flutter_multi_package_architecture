import 'package:iupp_core/core.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entity/entities.dart';

part 'installment_model.g.dart';

@JsonSerializable(explicitToJson: true)
class InstallmentModel extends Model {
  InstallmentModel({
    required this.number,
    required this.value,
  });

  final int number;
  final double value;

  static InstallmentModel fromJson(Map<String, dynamic> json) =>
      _$InstallmentModelFromJson(json);

  @override
  Map<String, dynamic> get toJson => _$InstallmentModelToJson(this);

  @override
  Entity get toEntity => InstallmentEntity(number: number, value: value);
}
