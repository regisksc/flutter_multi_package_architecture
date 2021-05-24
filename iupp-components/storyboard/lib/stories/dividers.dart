import 'package:iupp_components/components/components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final dividersStories = [
  Story(
    section: 'Dividers',
    name: 'IuppDivider',
    builder: (_, k) => IuppDivider(
      heigth: k.slider(
        label: 'Heigth',
        max: 30,
      ),
      verticalPadding: k.slider(
        label: 'Vertical Padding',
        max: 30,
      ),
    ),
  ),
];
