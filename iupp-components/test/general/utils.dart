import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/iupp_components.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

const firstContainerKey = ValueKey('first-container');
const secondContainerKey = ValueKey('second-container');

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

Future<void> loadPageWithAppBar(
  WidgetTester tester, {
  required AppBar appBar,
}) async {
  await mockNetworkImages(() async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          appBar: appBar,
          body: Container(),
        ),
      ),
    );
  });
}

Future<void> loadPageWithFooter(
  WidgetTester tester, {
  required Widget footer,
}) async {
  await mockNetworkImages(() async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: footer,
        ),
      ),
    );
  });
}