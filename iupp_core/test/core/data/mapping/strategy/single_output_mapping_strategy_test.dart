import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';

import '../../../../utils/mocks/mocks.dart';

void main() {
  late ModelMock model;
  late Map<String, dynamic> map;
  late MappingStrategy sut;
  setUp(() {
    model = ModelMock();
    map = <String, dynamic>{'field': ''};
    sut = SingleOutputMappingStrategy(model);
  });

  test(
    'should return needed Object',
    () async {
      // act
      final result = sut<ModelMock>(map);

      // assert
      expect(result, isA<ModelMock>());
    },
  );

  test(
    'should throw InvalidMapFailure if input map is not Map<String, dynamic>',
    () async {
      // arrange
      const String invalidMap = '';

      // assert
      expect(() => sut<ModelMock>(invalidMap), throwsA(InvalidMapFailure(invalidMap.runtimeType)));
    },
  );
}
