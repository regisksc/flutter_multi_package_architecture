import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/iupp_components.dart';

import '../../utils.dart';

void main() {
  testWidgets('should build without exploding', (tester) async {
    // arrange
    await loadPageWithWidget(
      tester,
      widget: IuppDivider(
        key: UniqueKey(),
      ),
    );

    // assert
    expect(find.byType(IuppDivider), findsOneWidget);
  });
}
