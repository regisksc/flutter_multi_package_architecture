import 'package:equatable/equatable.dart';

import '../data.dart';

class MappingParams extends Equatable {
  final Model mapper;
  final String? jsonMappingTargetKey;

  const MappingParams({
    required this.mapper,
    this.jsonMappingTargetKey,
  });

  @override
  List<Object?> get props => [
        mapper,
        jsonMappingTargetKey,
      ];
}
