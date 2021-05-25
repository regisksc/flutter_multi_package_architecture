import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/components/components.dart';

import '../../utils.dart';

Future<void> loadPageForBottomSheet(WidgetTester tester) async {
  await loadPageWithWidget(
    tester,
    widget: Builder(
      builder: (context) => ElevatedButton(
        onPressed: () {
          showIuppBottomSheet(
            context,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Text('I am a bottom sheet'),
              ],
            ),
          );
        },
        child: const Icon(
          Icons.ac_unit,
        ),
      ),
    ),
  );
}

Future<void> loadPageForOverlayBottomSheet(WidgetTester tester) async {
  await loadPageWithWidget(
    tester,
    widget: Builder(
      builder: (context) => ElevatedButton(
        onPressed: () {
          showIuppOverlayBottomSheet(
            context,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Text('I am an overlay bottom sheet'),
              ],
            ),
          );
        },
        child: const Icon(
          Icons.ac_unit,
        ),
      ),
    ),
  );
}
