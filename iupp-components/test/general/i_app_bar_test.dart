import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/iupp_components.dart';

import 'utils.dart';

void main() {
  testWidgets('should build without exploding', (tester) async {
    await loadPageWithAppBar(tester, appBar: IAppBar());
    expect(find.byType(IAppBar), findsOneWidget);
  });

  testWidgets('should do something when press cart icon', (tester) async {
    await loadPageWithAppBar(tester, appBar: IAppBar());
    final iconButton = find.byType(IconButton);
    expect(iconButton, findsOneWidget);
    await tester.tap(iconButton);
    await tester.pumpAndSettle();
  });
}
