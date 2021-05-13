import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/buttons/buttons.dart';

import 'utils.dart';

void main() {
  testWidgets('should build without exploding', (tester) async {
    await loadPageWithButton(
      tester,
      button: IElevatedButton(
        text: 'text',
        onPressed: () {},
      ),
    );
    expect(find.byType(IElevatedButton), findsOneWidget);
  });

  testWidgets('should show button text with primary color ', (tester) async {
    await loadPageWithButton(
      tester,
      button: IElevatedButton(
        text: 'text',
        onPressed: () {},
      ),
    );
    final textFinder = find.byType(Text);
    final textWidget = textFinder.evaluate().single.widget as Text;
    expect(textWidget.style!.color, primaryColor);
  });

  testWidgets(
      'should show button text with disabled color when onPressed is null',
      (tester) async {
    await loadPageWithButton(
      tester,
      button: IElevatedButton(
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
      button: IElevatedButton(
        text: 'text',
        onPressed: () {},
        isLoading: true,
      ),
    );
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
