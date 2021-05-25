import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../utils/atoms/bottom_sheets/test_methods.dart';

void main() {
  testWidgets('should show bottom sheet', (tester) async {
    // arrange
    await loadPageForBottomSheet(tester);

    // act
    final button = find.byType(ElevatedButton);
    await tester.tap(button);
    await tester.pumpAndSettle();

    // assert
    expect(find.text('I am a bottom sheet'), findsOneWidget);
  });
}
