import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'stories/stories.dart';
import 'theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Storybook(
        theme: theme,
        children: [
          ...buttonStories,
          ...snackBarStories,
          ...generalStories,
        ],
      );
}
