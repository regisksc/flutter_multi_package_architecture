import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils.dart';

void main() {
  testWidgets('should show success snack bar', (tester) async {
    // arrange
    await loadPageWithSnackBar(tester, type: SnackBarType.success);

    // act
    final button = find.byType(ElevatedButton);
    await tester.tap(button);
    await tester.pump();

    // assert
    expect(find.text('success'), findsOneWidget);
  });
}
