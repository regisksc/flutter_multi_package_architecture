// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'installment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstallmentModel _$InstallmentModelFromJson(Map<String, dynamic> json) {
  return InstallmentModel(
    number: json['number'] as int,
    value: (json['value'] as num).toDouble(),
  );
}

Map<String, dynamic> _$InstallmentModelToJson(InstallmentModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'value': instance.value,
    };
