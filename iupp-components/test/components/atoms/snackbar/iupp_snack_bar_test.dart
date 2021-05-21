import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/utils.dart';

void main() {
  testWidgets('should show icon on snackbar when on iOS', (tester) async {
    // arrange
    await loadPageWithSnackBar(tester, type: SnackBarType.success, isIOS: true);

    // act
    final button = find.byType(ElevatedButton);
    await tester.tap(button);
    await tester.pump();

    // assert
    expect(find.text('success'), findsOneWidget);
    expect(find.byType(Icon), findsOneWidget);
  });
}
