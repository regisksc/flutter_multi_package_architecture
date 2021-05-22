import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';

void main() {
  late Arguments arguments;

  setUp(() {
    arguments = Arguments(
      data: 'my data',
      params: const {
        'param1': 1,
      },
      uri: Uri.parse('uri?q=1'),
    );
  });

  test('copyWith', () {
    // arrange
    final equalCopy = arguments.copyWith();
    final copy = arguments.copyWith(
      data: 1,
      params: {
        'param2': 2,
      },
      uri: Uri.parse('other-uri'),
    );

    // assert
    expect(arguments, equalCopy);
    expect(arguments == copy, false);
  });

  test('queryParams', () {
    // assert
    expect(arguments.queryParams, {'q': '1'});
  });
}
