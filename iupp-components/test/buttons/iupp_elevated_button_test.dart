import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/buttons/buttons.dart';

import 'utils.dart';

void main() {
  testWidgets('should build without exploding', (tester) async {
    // arrange
    await loadPageWithButton(
      tester,
      button: IuppElevatedButton(
        text: 'text',
        onPressed: () {},
      ),
    );

    // assert
    expect(find.byType(IuppElevatedButton), findsOneWidget);
  });

  testWidgets('should show button text with primary color ', (tester) async {
    // arrange
    await loadPageWithButton(
      tester,
      button: IuppElevatedButton(
        text: 'text',
        onPressed: () {},
      ),
    );

    // act
    final textFinder = find.byType(Text);
    final textWidget = textFinder.evaluate().single.widget as Text;

    // assert
    expect(textWidget.style!.color, primaryColor);
  });

  testWidgets(
      'should show button text with disabled color when onPressed is null',
      (tester) async {
    // arrange
    await loadPageWithButton(
      tester,
      button: const IuppElevatedButton(
        text: 'text',
        onPressed: null,
      ),
    );

    // act
    final textFinder = find.byType(Text);
    final textWidget = textFinder.evaluate().single.widget as Text;

    // assert
    expect(textWidget.style!.color, disabledColor);
  });

  testWidgets('should show loading indicator when isLoading is true',
      (tester) async {
    // arrange
    await loadPageWithButton(
      tester,
      button: IuppElevatedButton(
        text: 'text',
        onPressed: () {},
        isLoading: true,
      ),
    );

    // assert
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
