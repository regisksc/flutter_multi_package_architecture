import 'package:iupp_components/buttons/buttons.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final buttonStories = [
  Story(
    section: 'Buttons',
    name: 'IElevatedButton',
    builder: (_, k) => IElevatedButton(
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
    name: 'IOutlinedButton',
    builder: (_, k) => IOutlinedButton(
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
    name: 'ITextButton',
    builder: (_, k) => ITextButton(
      onPressed: k.boolean(label: 'Enabled', initial: true) ? () {} : null,
      isLoading: k.boolean(label: 'Is Loading', initial: false),
      text: k.text(
        label: 'Text',
        initial: 'Elevated button',
      ),
    ),
  ),
];
