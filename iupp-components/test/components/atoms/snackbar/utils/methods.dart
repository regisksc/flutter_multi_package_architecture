import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core/dependencies/dependencies.dart';

import '../../../../utils/utils.dart';

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

Future<void> loadPageWithSnackBar(
  WidgetTester tester, {
  required SnackBarType type,
  bool isIOS = false,
}) async {
  await loadPageWithWidget(
    tester,
    theme: ThemeData(
      platform: isIOS ? TargetPlatform.iOS : TargetPlatform.android,
    ),
    widget: Builder(
      builder: (context) => ElevatedButton(
        onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
          getSnackBarFromType(context, type),
        ),
        child: const Text('Show Snackbar'),
      ),
    ),
  );
}

Future<void> loadPageIosWithSnackBar(
  WidgetTester tester, {
  required SnackBarType type,
}) async {
  await loadPageWithWidget(
    tester,
    theme: ThemeData(platform: TargetPlatform.iOS),
    widget: Builder(
      builder: (context) => ElevatedButton(
        onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
          getSnackBarFromType(context, type),
        ),
        child: const Text('Show Snackbar'),
      ),
    ),
  );
}
