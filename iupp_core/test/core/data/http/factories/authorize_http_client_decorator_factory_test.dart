import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';

void main() {
  setUpAll(() async {
    await initCore();
  });

  test('should return HttpClient with authorization', () {
    // act
    final httpClient = makeAuthorizeHttpClientDecorator();

    // assert
    expect(httpClient, isNotNull);
    expect(httpClient, isA<HttpClient>());
  });
}
