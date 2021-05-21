import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/iupp_components.dart';

import '../../utils.dart';

void main() {
  testWidgets('should build without exploding', (tester) async {
    // arrange
    await loadPageWithWidget(
      tester,
      widget: IuppCard(
        key: UniqueKey(),
        children: const [],
      ),
    );

    // assert
    expect(find.byType(IuppCard), findsOneWidget);
  });

  testWidgets('should render its children', (tester) async {
    // arrange
    await loadPageWithWidget(
      tester,
      widget: const IuppCard(
        children: [
          Text('a'),
          Text('b'),
          Text('c'),
        ],
      ),
    );

    // assert
    expect(find.text('a'), findsOneWidget);
    expect(find.text('b'), findsOneWidget);
    expect(find.text('c'), findsOneWidget);
  });
}
