import 'package:flutter/material.dart';
import 'package:iupp_components/iupp_components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final generalStories = [
  Story(
    section: 'General',
    name: 'IAppBar',
    builder: (_, k) => IAppBar(),
  ),
  Story(
    section: 'General',
    name: 'ICarrouselSlider',
    builder: (_, k) => ICarrouselSlider(
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
  Story(
    section: 'General',
    name: 'IFooter',
    builder: (_, k) => const IFooter(),
  ),
];
