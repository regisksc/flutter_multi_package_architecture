import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/iupp_components.dart';

Future<void> loadPageWithSnackBar(
  WidgetTester tester, {
  required SnackBarType type,
  bool isIOS = false,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      theme: ThemeData(
        platform: isIOS ? TargetPlatform.iOS : TargetPlatform.android,
      ),
      home: Scaffold(
        body: Builder(
          builder: (context) => ElevatedButton(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              getSnackBarFromType(context, type),
            ),
            child: const Text('Show Snackbar'),
          ),
        ),
      ),
    ),
  );
}

Future<void> loadPageIosWithSnackBar(
  WidgetTester tester, {
  required SnackBarType type,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      theme: ThemeData(platform: TargetPlatform.iOS),
      home: Scaffold(
        body: Builder(
          builder: (context) => ElevatedButton(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              getSnackBarFromType(context, type),
            ),
            child: const Text('Show Snackbar'),
          ),
        ),
      ),
    ),
  );
}

enum SnackBarType {
  success,
  warning,
  info,
  error,
}

IuppSnackBar getSnackBarFromType(BuildContext context, SnackBarType type) {
  switch (type) {
    case SnackBarType.success:
      return IuppSuccessSnackBar(context, message: 'success');
    case SnackBarType.warning:
      return IuppWarningSnackBar(context, message: 'warning');
    case SnackBarType.info:
      return IuppInfoSnackBar(context, message: 'info');
    case SnackBarType.error:
      return IuppErrorSnackBar(context, message: 'error');
  }
}
