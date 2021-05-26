import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core.dart';

import '../../../utils/utils.dart';

void main() {
  testWidgets('should build IuppImage with network', (tester) async {
    // arrange
    await loadPageWithWidget(
      tester,
      widget: IuppImage.network(
        'https://www.zup.com.br/wp-content/uploads/2021/03/zup-logo-1.jpg',
        key: const ValueKey('image'),
      ),
    );
    await tester.pumpAndSettle();

    // assert
    expect(find.byKey(const ValueKey('image')), findsOneWidget);
  });

  testWidgets('should build IuppImage with asset', (tester) async {
    // arrange
    await loadPageWithWidget(
      tester,
      widget: IuppImage.asset(
        'logo_iupp.png',
        key: const ValueKey('image'),
      ),
    );
    await tester.pumpAndSettle();

    // assert
    expect(find.byKey(const ValueKey('image')), findsOneWidget);
  });
}
