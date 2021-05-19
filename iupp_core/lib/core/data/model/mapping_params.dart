import 'package:equatable/equatable.dart';

import '../data.dart';

class MappingParams extends Equatable {
  const MappingParams({
    required this.mapper,
    this.jsonMappingTargetKey,
  });

  final Model mapper;
  final String? jsonMappingTargetKey;  

  @override
  List<Object?> get props => [
        mapper,
        jsonMappingTargetKey,
      ];
}
