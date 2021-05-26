import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/components/components.dart';

import '../../../utils/utils.dart';

void main() {

  testWidgets('should build without exploding', (tester) async {
    // arrange
    await loadPageWithWidget(
      tester,
      widget: const IuppSocialNetworks(),
    );

    // assert
    expect(find.byType(IuppSocialNetworks), findsOneWidget);
  });

  testWidgets('should show 4 social buttons', (tester) async {
    // arrange
    await loadPageWithWidget(
      tester,
      widget: const IuppSocialNetworks(),
    );

    // assert
    expect(find.byType(GestureDetector), findsNWidgets(4));
  });

  testWidgets('should do something when click on facebook button',
      (tester) async {
    // arrange
    await loadPageWithWidget(
      tester,
      widget: const IuppSocialNetworks(),
    );

    // act
    final facebookButton = find.byKey(const ValueKey('facebook-btn'));
    await tester.tap(facebookButton);
    await tester.pumpAndSettle();
  });

  testWidgets('should do something when click on instagram button',
      (tester) async {
    // arrange
    await loadPageWithWidget(
      tester,
      widget: const IuppSocialNetworks(),
    );

    // act
    final instagramButton = find.byKey(const ValueKey('instagram-btn'));
    await tester.tap(instagramButton);
    await tester.pumpAndSettle();
  });

  testWidgets('should do something when click on youtube button',
      (tester) async {
    // arrange
    await loadPageWithWidget(
      tester,
      widget: const IuppSocialNetworks(),
    );

    // act
    final youtubeButton = find.byKey(const ValueKey('youtube-btn'));
    await tester.tap(youtubeButton);
    await tester.pumpAndSettle();
  });

  testWidgets('should do something when click on twitter button',
      (tester) async {
    // arrange
    await loadPageWithWidget(
      tester,
      widget: const IuppSocialNetworks(),
    );

    // act
    final twitterButton = find.byKey(const ValueKey('twitter-btn'));
    await tester.tap(twitterButton);
    await tester.pumpAndSettle();
  });
}
