import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/buttons/buttons.dart';

import 'utils.dart';

void main() {
  testWidgets('should build without exploding', (tester) async {
    await loadPageWithButton(
      tester,
      button: IOutlinedButton(
        text: 'text',
        onPressed: () {},
      ),
    );
    expect(find.byType(IOutlinedButton), findsOneWidget);
  });

  testWidgets('should show button text with background color', (tester) async {
    await loadPageWithButton(
      tester,
      button: IOutlinedButton(
        text: 'text',
        onPressed: () {},
      ),
    );
    final textFinder = find.byType(Text);
    final textWidget = textFinder.evaluate().single.widget as Text;
    expect(textWidget.style!.color, backgroundColor);
  });

  testWidgets(
      'should show button text with disabled color when onPressed is null',
      (tester) async {
    await loadPageWithButton(
      tester,
      button: const IOutlinedButton(
        text: 'text',
        onPressed: null,
      ),
    );
    final textFinder = find.byType(Text);
    final textWidget = textFinder.evaluate().single.widget as Text;
    expect(textWidget.style!.color, disabledColor);
  });

  testWidgets('should show loading indicator when isLoading is true',
      (tester) async {
    await loadPageWithButton(
      tester,
      button: IOutlinedButton(
        text: 'text',
        onPressed: () {},
        isLoading: true,
      ),
    );
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
