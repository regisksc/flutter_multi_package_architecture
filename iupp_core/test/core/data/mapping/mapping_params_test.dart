import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';

import '../../../utils/utils.dart';

void main() {
  late MappingParams sut;
  late ModelMock model;

  setUp(() {
    model = ModelMock();
  });

  test(
    'equatable',
    () async {
      // arrange
      final sut = MappingParams(mapper: model, amountOfOutput: MapFor.one);

      // assert
      expect(sut == MappingParams(mapper: model, amountOfOutput: MapFor.one),
          true);
    },
  );

  group('mapping for one', () {
    setUp(() {
      sut = MappingParams(mapper: model, amountOfOutput: MapFor.one);
    });

    test(
      'should return SingleOutputMappingStrategy if Mapping for one output instance',
      () async {
        // arrange
        final strategy = sut.strategy;

        // assert
        expect(strategy, isA<SingleOutputMappingStrategy>());
      },
    );
  });

  group('mapping for many', () {
    setUp(() {
      sut = MappingParams(mapper: model, amountOfOutput: MapFor.many);
    });

    test(
      'should return MultipleOutputMappingStrategy if Mapping for many output instances',
      () async {
        // arrange
        final strategy = sut.strategy;

        // assert
        expect(strategy, isA<MultipleOutputMappingStrategy>());
      },
    );
  });
}
