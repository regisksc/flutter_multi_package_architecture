import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core/data/mapping/strategy/single_output_mapping_strategy.dart';
import 'package:iupp_core/core/data/mapping/strategy/strategy.dart';
import 'package:iupp_core/core/error/error.dart';

import '../../../../utils/mocks/mocks.dart';

void main() {
  late ModelMock model;
  late Map<String, dynamic> map;
  late MappingStrategy sut;
  setUp(() {
    model = ModelMock();
    map = <String, dynamic>{'field': ''};
    sut = SingleOutputMappingStrategy(model: model, map: map);
  });

  test(
    'should return needed Object',
    () async {
      // act
      final result = sut<ModelMock>();

      // assert
      expect(result, isA<ModelMock>());
    },
  );

  test(
    'should throw InvalidMapFailure if input map is not Map<String, dynamic>',
    () async {
      // arrange
      const String invalidMap = '';
      sut = SingleOutputMappingStrategy(model: model, map: invalidMap);

      // assert
      expect(() => sut<ModelMock>(), throwsA(InvalidMapFailure(invalidMap.runtimeType)));
    },
  );
}
