import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/utils.dart';

void main() {
  testWidgets('should show warning snack bar', (tester) async {
    // arrange
    await loadPageWithSnackBar(tester, type: SnackBarType.warning);

    // act
    final button = find.byType(ElevatedButton);
    await tester.tap(button);
    await tester.pump();

    // assert
    expect(find.text('warning'), findsOneWidget);
  });
}
