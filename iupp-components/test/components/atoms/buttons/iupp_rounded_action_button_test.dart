import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/components/components.dart';

import '../../../utils/utils.dart';

void main() {
  testWidgets('should build without exploding', (tester) async {
    // arrange
    await loadPageWithWidget(
      tester,
      widget: IuppRoundedActionButton(
        key: UniqueKey(),
        onTap: () {},
        child: const Icon(Icons.add),
      ),
    );

    // assert
    expect(find.byType(IuppRoundedActionButton), findsOneWidget);
  });

  testWidgets('should execute onTap callback when tapped', (tester) async {
    // arrange
    var tapped = false;
    await loadPageWithWidget(
      tester,
      widget: IuppRoundedActionButton(
        key: UniqueKey(),
        onTap: () {
          tapped = true;
        },
        child: const Icon(Icons.add),
      ),
    );

    // act
    final button = find.byIcon(Icons.add);
    await tester.tap(button);
    await tester.pumpAndSettle();

    // assert
    expect(tapped, true);
  });
}
