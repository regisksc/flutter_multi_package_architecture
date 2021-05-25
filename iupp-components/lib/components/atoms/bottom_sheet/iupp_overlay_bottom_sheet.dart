import 'package:flutter/material.dart';

Future<dynamic> showIuppOverlayBottomSheet(
  BuildContext context, {
  required List<Widget> children,
}) {
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext context) => Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
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
