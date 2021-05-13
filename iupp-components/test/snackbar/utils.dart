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
            child: Text('Show Snackbar'),
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              getSnackBarFromType(context, type),
            ),
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
            child: Text('Show Snackbar'),
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              getSnackBarFromType(context, type),
            ),
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

ISnackBar getSnackBarFromType(BuildContext context, SnackBarType type) {
  switch (type) {
    case SnackBarType.success:
      return ISuccessSnackBar(context, message: 'success');
    case SnackBarType.warning:
      return IWarningSnackBar(context, message: 'warning');
    case SnackBarType.info:
      return IInfoSnackBar(context, message: 'info');
    case SnackBarType.error:
      return IErrorSnackBar(context, message: 'error');
  }
}
