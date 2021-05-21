import 'package:flutter/material.dart';
import 'package:iupp_components/iupp_components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final generalStories = [
  Story(
    section: 'General',
    name: 'IuppAppBar',
    builder: (_, k) => IuppAppBar(
      iuppActions: k.options(label: 'Actions', initial: [], options: const [
        Option('Empty', []),
        Option(
          'Options',
          [
            Icon(
              IuppIcons.icone_contorno_A_agencia_outline,
              color: Color(0xFF00EEE6),
              size: 28,
            ),
            SizedBox(width: 8),
            Icon(
              IuppIcons.icone_contorno_C_caminhao,
              color: Colors.white,
              size: 28,
            ),
            SizedBox(width: 8),
            Icon(
              IuppIcons.icone_contorno_C_consorcio_outline,
              color: Colors.white,
              size: 28,
            ),
          ],
        )
      ]),
      iuppLeading: k.options(
        label: 'Leading',
        initial: null,
        options: const [
          Option('Empty', null),
          Option(
            'Icon',
            Icon(
              IuppIcons.icone_contorno_M_menu_hamburger,
              color: Colors.white,
            ),
          )
        ],
      ),
      centered: k.boolean(label: 'Center', initial: false),
    ),
  ),
  Story(
    section: 'General',
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
  Story(
    section: 'General',
    name: 'IuppFooter',
    builder: (_, k) => const IuppFooter(),
  ),
  Story(
    section: 'General',
    name: 'IuppCard',
    builder: (_, k) => IuppCard(
      padding: EdgeInsets.all(
        k.slider(
          label: 'Padding',
          initial: 0,
          min: 0,
          max: 30,
        ),
      ),
      children: const [
        Text('I am a text inside the card'),
        Text('Luke, i am your father'),
      ],
    ),
  ),
  Story(
    section: 'General',
    name: 'IuppDivider',
    builder: (_, k) => IuppDivider(
      heigth: k.slider(
          label: 'Heigth',
          initial: 0,
          min: 0,
          max: 30,
        ),
      verticalPadding: k.slider(
          label: 'Vertical Padding',
          initial: 0,
          min: 0,
          max: 30,
        ),
    ),
  ),
];
