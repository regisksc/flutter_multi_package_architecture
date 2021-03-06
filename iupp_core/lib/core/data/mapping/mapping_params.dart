import '../../../core.dart';
import '../data.dart';

class MappingParams extends Equatable {
  const MappingParams({required this.mapper, required MapFor amountOfOutput}) : _amountOfOutput = amountOfOutput;
  final Model mapper;
  final MapFor _amountOfOutput;

  MappingStrategy get strategy {
    switch (_amountOfOutput) {
      case MapFor.one:
        return SingleOutputMappingStrategy(mapper);
      case MapFor.many:
        return MultipleOutputMappingStrategy(mapper);
    }
  }

  @override
  List<Object?> get props => [mapper, _amountOfOutput];
}
