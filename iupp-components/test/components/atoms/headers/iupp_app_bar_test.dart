import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/components/components.dart';

import '../../../utils/utils.dart';

void main() {
  testWidgets('should build without exploding', (tester) async {
    // arrange
    await loadPageWithWidget(tester, appBar: IuppAppBar());

    // assert
    expect(find.byType(IuppAppBar), findsOneWidget);
  });

  testWidgets('should do something when press cart icon', (tester) async {
    // arrange
    await loadPageWithWidget(
      tester,
      appBar: IuppAppBar(
        iuppActions: const [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: null,
          )
        ],
      ),
    );
    final iconButton = find.byType(IconButton);

    // assert
    expect(iconButton, findsOneWidget);
    await tester.tap(iconButton);
    await tester.pumpAndSettle();
  });
}
