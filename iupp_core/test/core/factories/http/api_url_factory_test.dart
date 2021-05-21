import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';

void main() {
  test('should return the api url with the correct path', () {
    // act
    final url = makeApiUrl('endpoint');

    // assert
    expect(url.contains('endpoint'), true);
  });
}
