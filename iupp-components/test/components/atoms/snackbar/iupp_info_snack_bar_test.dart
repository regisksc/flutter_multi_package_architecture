import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/utils.dart';

void main() {
  testWidgets('should show info snack bar', (tester) async {
    // arrange
    await loadPageWithSnackBar(tester, type: SnackBarType.info);

    // act
    final button = find.byType(ElevatedButton);
    await tester.tap(button);
    await tester.pump();

    // assert
    expect(find.text('info'), findsOneWidget);
  });
}
