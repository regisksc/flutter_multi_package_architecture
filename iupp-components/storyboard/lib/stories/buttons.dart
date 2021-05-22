import 'package:iupp_components/components/components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final buttonsStories = [
  Story(
    section: 'Buttons',
    name: 'IuppElevatedButton',
    builder: (_, k) => IuppElevatedButton(
      onPressed: k.boolean(label: 'Enabled', initial: true) ? () {} : null,
      isLoading: k.boolean(label: 'Is Loading', initial: false),
      text: k.text(
        label: 'Text',
        initial: 'Elevated button',
      ),
    ),
  ),
  Story(
    section: 'Buttons',
    name: 'IuppOutlinedButton',
    builder: (_, k) => IuppOutlinedButton(
      onPressed: k.boolean(label: 'Enabled', initial: true) ? () {} : null,
      isLoading: k.boolean(label: 'Is Loading', initial: false),
      text: k.text(
        label: 'Text',
        initial: 'Elevated button',
      ),
    ),
  ),
  Story(
    section: 'Buttons',
    name: 'IuppTextButton',
    builder: (_, k) => IuppTextButton(
      onPressed: k.boolean(label: 'Enabled', initial: true) ? () {} : null,
      isLoading: k.boolean(label: 'Is Loading', initial: false),
      text: k.text(
        label: 'Text',
        initial: 'Elevated button',
      ),
    ),
  ),
];
