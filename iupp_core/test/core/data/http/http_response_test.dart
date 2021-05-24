import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';

void main() {
  test('toString', () {
    // arrange
    final httResponse = HttpResponse(code: 1, data: 1, message: 'message');

    // assert
    expect(httResponse.toString(), "'code': 1, 'message': message, 'data': 1");
  });
}
