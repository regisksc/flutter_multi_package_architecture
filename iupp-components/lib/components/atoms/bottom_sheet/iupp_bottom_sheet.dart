import 'package:flutter/material.dart';

PersistentBottomSheetController<T> showIuppBottomSheet<T>(
  BuildContext context, {
  required Widget child,
}) {
  return showBottomSheet(
    context: context,
    builder: (BuildContext context) => Padding(
      padding: const EdgeInsets.all(24),
      child: child,
    ),
    backgroundColor: Colors.grey[100],
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
  );
}
