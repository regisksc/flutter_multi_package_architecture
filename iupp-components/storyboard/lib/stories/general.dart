import 'package:iupp_components/components/components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final generalStories = [
  Story(
    section: 'General',
    name: 'IuppImage from Asset',
    builder: (_, k) => IuppImage.asset(
      k.text(
        label: 'Name of the asset file',
        initial: 'logo_iupp.png',
      ),
    ),
  ),
  Story(
    section: 'General',
    name: 'IuppImage from Network',
    builder: (_, k) => IuppImage.network(
      k.text(
        label: 'Url of the image',
        initial:
            'https://www.zup.com.br/wp-content/uploads/2021/03/zup-logo-1.jpg',
      ),
    ),
  ),
];
