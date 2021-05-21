import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/iupp_components.dart';

import '../../utils.dart';

void main() {
  testWidgets('should build without exploding', (tester) async {
    // arrange
    await loadPageWithWidget(tester, widget: const IuppFooter());

    // assert
    expect(find.byType(IuppFooter), findsOneWidget);
  });
}
