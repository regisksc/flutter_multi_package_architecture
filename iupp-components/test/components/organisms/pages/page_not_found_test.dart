import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/components/components.dart';

import '../../../utils/utils.dart';

void main() {
  testWidgets('should build withou exploding', (tester) async {
    // arrange
    await loadPage(
      tester,
      page: PageNotFound(
        onPressedBackButton: () {},
      ),
    );

    // assert
    expect(find.byType(PageNotFound), findsOneWidget);
  });

  testWidgets('should call onPressedBackButton when pressed back button',
      (tester) async {
    // arrange
    var pressedBackButton = false;

    await loadPage(
      tester,
      page: PageNotFound(
        onPressedBackButton: () => pressedBackButton = true,
      ),
    );

    // act
    final backButton = find.byIcon(Icons.arrow_left);
    await tester.tap(backButton);

    // assert
    expect(pressedBackButton, true);
  });
}
