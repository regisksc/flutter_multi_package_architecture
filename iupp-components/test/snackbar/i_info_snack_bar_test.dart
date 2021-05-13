import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils.dart';

void main() {
  testWidgets('should show info snack bar', (tester) async {
    await loadPageWithSnackBar(tester, type: SnackBarType.info);
    final button = find.byType(ElevatedButton);
    await tester.tap(button);
    await tester.pump();
    expect(find.text('info'), findsOneWidget);
  });
}
