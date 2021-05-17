import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/iupp_components.dart';

import 'utils.dart';

void main() {
  testWidgets('should build without exploding', (tester) async {
    await loadPageWithCarousel(
      tester,
    );
    expect(find.byType(ICarrouselSlider), findsOneWidget);
  });

  testWidgets('should build without indicator when none is given',
      (tester) async {
    await loadPageWithCarousel(
      tester,
    );
    expect(find.byType(ICarrouselSlider), findsOneWidget);
    expect(find.byType(DotsIndicator), findsNothing);
    expect(find.byType(SnakeIndicator), findsNothing);
  });

  testWidgets('should build without exploding with dots carousel indicator',
      (tester) async {
    await loadPageWithCarousel(
      tester,
      carouselIndicator: CarouselIndicator.dots,
    );
    expect(find.byType(ICarrouselSlider), findsOneWidget);
    expect(find.byType(DotsIndicator), findsOneWidget);
  });

  testWidgets('should build without exploding with snake carousel indicator',
      (tester) async {
    await loadPageWithCarousel(
      tester,
      carouselIndicator: CarouselIndicator.snake,
    );
    expect(find.byType(ICarrouselSlider), findsOneWidget);
    expect(find.byType(SnakeIndicator), findsOneWidget);
  });

  testWidgets('should swipe the item of carousel when dragging with dots',
      (tester) async {
    await loadPageWithCarousel(
      tester,
      carouselIndicator: CarouselIndicator.dots,
    );
    await tester.drag(find.byKey(firstContainerKey), const Offset(500.0, 0.0));
    await tester.pumpAndSettle();
    expect(find.byKey(secondContainerKey), findsOneWidget);
  });

  testWidgets('should swipe the item of carousel when dragging with snake',
      (tester) async {
    await loadPageWithCarousel(
      tester,
      carouselIndicator: CarouselIndicator.snake,
    );
    await tester.drag(find.byKey(firstContainerKey), const Offset(500.0, 0.0));
    await tester.pumpAndSettle();
    expect(find.byKey(secondContainerKey), findsOneWidget);
  });
}
