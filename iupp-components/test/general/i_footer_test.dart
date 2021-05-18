import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/iupp_components.dart';

import 'utils.dart';

void main() {
  testWidgets('should build without exploding', (tester) async {
    // arrange
    await loadPageWithFooter(tester, footer: const IFooter());

    // assert
    expect(find.byType(IFooter), findsOneWidget);
  });
}
