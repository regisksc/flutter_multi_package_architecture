import 'package:equatable/equatable.dart';
import 'package:iupp_core/core/data/mapping/strategy/single_output_mapping_strategy.dart';

import '../data.dart';

class MappingParams extends Equatable {
  const MappingParams({
    required this.mapper,
    required MapFor amountOfOutput,
  }) : _amountOfOutput = amountOfOutput;

  final Model mapper;
  final MapFor _amountOfOutput;

  MappingStrategy get strategy {
    switch (_amountOfOutput) {
      case MapFor.one:
        return SingleOutputMappingStrategy(model: mapper);
      case MapFor.many:
        return MultipleOutputMappingStrategy(model: mapper);
    }
  }

  @override
  List<Object?> get props => [mapper, _amountOfOutput];
}
