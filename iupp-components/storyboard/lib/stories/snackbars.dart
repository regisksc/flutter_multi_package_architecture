import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final snackBarStories = [
  Story(
    section: 'Snackbars',
    name: 'IuppSuccessSnackBar',
    builder: (context, k) => ElevatedButton(
      onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
        IuppSuccessSnackBar(
          context,
          message: 'It is a SUCCESS SnackBar',
        ),
      ),
      child: const Text(
        'Show SnackBar',
      ),
    ),
  ),
  Story(
    section: 'Snackbars',
    name: 'IuppInfoSnackBar',
    builder: (context, k) => ElevatedButton(
      onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
        IuppInfoSnackBar(
          context,
          message: 'It is an INFO SnackBar',
        ),
      ),
      child: const Text(
        'Show SnackBar',
      ),
    ),
  ),
  Story(
    section: 'Snackbars',
    name: 'IuppWarningSnackBar',
    builder: (context, k) => ElevatedButton(
      onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
        IuppWarningSnackBar(
          context,
          message: 'It is a WARNING SnackBar',
        ),
      ),
      child: const Text(
        'Show SnackBar',
      ),
    ),
  ),
  Story(
    section: 'Snackbars',
    name: 'IuppErrorSnackBar',
    builder: (context, k) => ElevatedButton(
      onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
        IuppErrorSnackBar(
          context,
          message: 'It is an ERROR SnackBar',
        ),
      ),
      child: const Text(
        'Show SnackBar',
      ),
    ),
  ),
];
