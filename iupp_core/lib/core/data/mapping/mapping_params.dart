import 'package:equatable/equatable.dart';
import 'package:iupp_core/core/data/mapping/strategy/single_output_mapping_strategy.dart';

import '../data.dart';

class MappingParams extends Equatable {
  const MappingParams({
    required Model mapper,
    required MapFor amountOfOutput,
  }) : _mapper = mapper, _amountOfOutput = amountOfOutput;

  final Model _mapper;
  final MapFor _amountOfOutput;

  MappingStrategy get strategy {
    switch (_amountOfOutput) {
      case MapFor.one:
        return SingleOutputMappingStrategy(model: _mapper);
      case MapFor.many:
        return MultipleOutputMappingStrategy(model: _mapper);
    }
  }

  @override
  List<Object?> get props => [_mapper, _amountOfOutput];
}
