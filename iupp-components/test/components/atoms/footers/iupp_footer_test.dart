import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/components/components.dart';

import '../../../utils/test_methods/widget_test_methods.dart';

void main() {
  testWidgets('should build without exploding', (tester) async {
    // arrange
    await loadPageWithWidget(tester, widget: const IuppFooter());

    // assert
    expect(find.byType(IuppFooter), findsOneWidget);
  });
}
