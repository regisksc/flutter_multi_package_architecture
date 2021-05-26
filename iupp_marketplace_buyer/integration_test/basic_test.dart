import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:iupp_marketplace_buyer/main.dart' as app;
import 'package:iupp_marketplace_buyer/presentation/presentation.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    '''
    WHEN app launches
    SHOULD show the HomePage
    ''',
    (tester) async {
      app.main();
      await tester.pumpAndSettle();
      final homePage = find.byType(HomePage);
      expect(homePage, findsOneWidget);
    },
  );
}
