import 'package:equatable/equatable.dart';
import 'package:iupp_core/core/data/mapping/strategy/mapping_strategy_abstraction.dart';

import '../data.dart';

class MappingParams extends Equatable {
  const MappingParams({required this.mapper, required this.strategy});
  final Model mapper;
  final MappingStrategy strategy;
  @override
  List<Object?> get props => [mapper, strategy];
}
