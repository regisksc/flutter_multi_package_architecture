import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/components/components.dart';

import '../../../utils/test_methods/widget_test_methods.dart';

void main() {
  const firstContainerKey = ValueKey('first-container');
  const secondContainerKey = ValueKey('second-container');

  Future<void> loadPageWithCarousel(
    WidgetTester tester, {
    CarouselIndicator? carouselIndicator,
  }) async {
    await loadPageWithWidget(
      tester,
      widget: IuppCarrouselSlider(
        items: [
          Container(
            key: firstContainerKey,
            height: 200,
            width: 200,
            color: Colors.blue,
          ),
          Container(
            key: secondContainerKey,
            height: 200,
            width: 200,
            color: Colors.red,
          ),
        ],
        carouselIndicator: carouselIndicator,
      ),
    );
  }

  testWidgets('should build without exploding', (tester) async {
    // arrange
    await loadPageWithCarousel(tester);

    // assert
    expect(find.byType(IuppCarrouselSlider), findsOneWidget);
  });

  testWidgets('should build without indicator when none is given', (tester) async {
    // arrange
    await loadPageWithCarousel(tester);

    // assert
    expect(find.byType(IuppCarrouselSlider), findsOneWidget);
    expect(find.byType(DotsIndicator), findsNothing);
    expect(find.byType(SnakeIndicator), findsNothing);
  });

  testWidgets('should build without exploding with dots carousel indicator', (tester) async {
    // arrange
    await loadPageWithCarousel(
      tester,
      carouselIndicator: CarouselIndicator.dots,
    );

    // assert
    expect(find.byType(IuppCarrouselSlider), findsOneWidget);
    expect(find.byType(DotsIndicator), findsOneWidget);
  });

  testWidgets('should build without exploding with snake carousel indicator', (tester) async {
    // arrange
    await loadPageWithCarousel(
      tester,
      carouselIndicator: CarouselIndicator.snake,
    );

    // assert
    expect(find.byType(IuppCarrouselSlider), findsOneWidget);
    expect(find.byType(SnakeIndicator), findsOneWidget);
  });

  testWidgets('should swipe the item of carousel when dragging with dots', (tester) async {
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

  testWidgets('should swipe the item of carousel when dragging with snake', (tester) async {
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
