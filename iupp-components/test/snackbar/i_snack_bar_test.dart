import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils.dart';

void main() {
  testWidgets('should show icon on snackbar when on iOS', (tester) async {
    await loadPageWithSnackBar(tester, type: SnackBarType.success, isIOS: true);
    final button = find.byType(ElevatedButton);
    await tester.tap(button);
    await tester.pump();
    expect(find.text('success'), findsOneWidget);
    expect(find.byType(Icon), findsOneWidget);
  });
}
