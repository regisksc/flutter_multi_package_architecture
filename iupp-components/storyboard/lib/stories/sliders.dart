import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final slidersStories = [
  Story(
    section: 'Sliders',
    name: 'IuppCarrouselSlider',
    builder: (_, k) => IuppCarrouselSlider(
      items: [
        Container(
          height: 200,
          width: 200,
          color: Colors.blue,
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.green,
        ),
      ],
    ),
  ),
];
