import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/iupp_components.dart';

import 'utils.dart';

void main() {
  testWidgets('should build without exploding', (tester) async {
    // arrange
    await loadPageWithCarousel(tester);
    expect(find.byType(IuppCarrouselSlider), findsOneWidget);
  });

  testWidgets('should build without indicator when none is given',
      (tester) async {
    // arrange
    await loadPageWithCarousel(tester);

    // assert
    expect(find.byType(IuppCarrouselSlider), findsOneWidget);
    expect(find.byType(DotsIndicator), findsNothing);
    expect(find.byType(SnakeIndicator), findsNothing);
  });

  testWidgets('should build without exploding with dots carousel indicator',
      (tester) async {
    // arrange
    await loadPageWithCarousel(
      tester,
      carouselIndicator: CarouselIndicator.dots,
    );

    // assert
    expect(find.byType(IuppCarrouselSlider), findsOneWidget);
    expect(find.byType(DotsIndicator), findsOneWidget);
  });

  testWidgets('should build without exploding with snake carousel indicator',
      (tester) async {
    // arrange
    await loadPageWithCarousel(
      tester,
      carouselIndicator: CarouselIndicator.snake,
    );

    // assert
    expect(find.byType(IuppCarrouselSlider), findsOneWidget);
    expect(find.byType(SnakeIndicator), findsOneWidget);
  });

  testWidgets('should swipe the item of carousel when dragging with dots',
      (tester) async {
    // arrange
    await loadPageWithCarousel(
      tester,
      carouselIndicator: CarouselIndicator.dots,
    );

    // act
    await tester.drag(find.byKey(firstContainerKey), const Offset(500.0, 0.0));
    await tester.pumpAndSettle();

    // assert
    expect(find.byKey(secondContainerKey), findsOneWidget);
  });

  testWidgets('should swipe the item of carousel when dragging with snake',
      (tester) async {
    // arrange
    await loadPageWithCarousel(
      tester,
      carouselIndicator: CarouselIndicator.snake,
    );

    // act
    await tester.drag(find.byKey(firstContainerKey), const Offset(500.0, 0.0));
    await tester.pumpAndSettle();

    // assert
    expect(find.byKey(secondContainerKey), findsOneWidget);
  });
}
