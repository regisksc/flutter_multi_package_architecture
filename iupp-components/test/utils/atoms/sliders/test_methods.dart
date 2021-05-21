import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/components/components.dart';

import '../../utils.dart';

Future<void> loadPageWithCarousel(
  WidgetTester tester, {
  CarouselIndicator? carouselIndicator,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: IuppCarrouselSlider(
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
      ),
    ),
  );
}
