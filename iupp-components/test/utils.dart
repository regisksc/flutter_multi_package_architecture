import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

Future<void> loadPageWithWidget(
  WidgetTester tester, {
  Widget? widget,
  AppBar? appBar,
  ThemeData? theme,
}) async {
  await mockNetworkImages(() async {
    await tester.pumpWidget(
    MaterialApp(
      theme: theme,
      home: Scaffold(
        appBar: appBar,
        body: widget ?? const SizedBox.shrink(),
      ),
    ),
  );
  });
}
