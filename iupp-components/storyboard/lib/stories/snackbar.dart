import 'package:flutter/material.dart';
import 'package:iupp_components/iupp_components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final snackBarStories = [
  Story(
    section: 'Snackbars',
    name: 'ISuccessSnackBar',
    builder: (context, k) => ElevatedButton(
      onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
        ISuccessSnackBar(
          context,
          message: 'It is a SUCCESS SnackBar',
        ),
      ),
      child: Text(
        'Show SnackBar',
      ),
    ),
  ),
  Story(
    section: 'Snackbars',
    name: 'IInfoSnackBar',
    builder: (context, k) => ElevatedButton(
      onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
        IInfoSnackBar(
          context,
          message: 'It is an INFO SnackBar',
        ),
      ),
      child: Text(
        'Show SnackBar',
      ),
    ),
  ),
  Story(
    section: 'Snackbars',
    name: 'IWarningSnackBar',
    builder: (context, k) => ElevatedButton(
      onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
        IWarningSnackBar(
          context,
          message: 'It is a WARNING SnackBar',
        ),
      ),
      child: Text(
        'Show SnackBar',
      ),
    ),
  ),
  Story(
    section: 'Snackbars',
    name: 'IErrorSnackBar',
    builder: (context, k) => ElevatedButton(
      onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
        IErrorSnackBar(
          context,
          message: 'It is an ERROR SnackBar',
        ),
      ),
      child: Text(
        'Show SnackBar',
      ),
    ),
  ),
];
