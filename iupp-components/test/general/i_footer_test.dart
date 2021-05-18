import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/iupp_components.dart';

import 'utils.dart';

void main() {
  testWidgets('should build without exploding', (tester) async {
    await loadPageWithFooter(tester, footer: const IFooter());
    expect(find.byType(IFooter), findsOneWidget);
  });
}
