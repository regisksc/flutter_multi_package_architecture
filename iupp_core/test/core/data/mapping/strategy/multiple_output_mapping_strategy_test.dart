import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core/data/mapping/strategy/strategy.dart';
import 'package:iupp_core/core/error/error.dart';

import '../../../../utils/mocks/mocks.dart';

void main() {
  late ModelMock model;
  late Map<String, dynamic> map;
  late List list;
  late MappingStrategy sut;
  setUp(() {
    model = ModelMock();
    map = <String, dynamic>{'field': ''};
    list = [];
    for (int i = 0; i < 2; i++) {
      list.add(Map.from(map));
    }
    sut = MultipleOutputMappingStrategy(model: model);
  });

  test(
    'should return a list of needed Object',
    () async {
      // act
      final result = sut<ModelMock>(mapOrListOfMap: list);

      // assert
      expect(result, [ModelMock().fromJson(map), ModelMock().fromJson(map)]);
    },
  );

  test(
    'should throw InvalidMapFailure if input map is not List<Map<String, dynamic>>',
    () async {
      // arrange
      const invalidMap = ['', false, 1];

      // assert
      expect(() => sut<ModelMock>(mapOrListOfMap: invalidMap), throwsA(InvalidMapFailure(invalidMap.runtimeType)));
    },
  );
}
