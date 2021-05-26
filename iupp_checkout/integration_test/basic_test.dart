import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:iupp_checkout/main.dart' as app;
import 'package:iupp_checkout/presentation/presentation.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    '''
    WHEN app launches
    SHOULD show the AddressesListPage
    ''',
    (tester) async {
      app.main();
      await tester.pumpAndSettle();
      final addressesListPage = find.byType(AddressesListPage);
      expect(addressesListPage, findsOneWidget);
    },
  );
}
