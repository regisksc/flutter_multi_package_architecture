import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final cardsStories = [
  Story(
    section: 'Cards',
    name: 'IuppCard',
    builder: (_, k) => IuppCard(
      padding: EdgeInsets.all(
        k.slider(
          label: 'Padding',
          max: 30,
        ),
      ),
      children: const [
        Text('I am a text inside the card'),
        Text('Luke, i am your father'),
      ],
    ),
  ),
];
