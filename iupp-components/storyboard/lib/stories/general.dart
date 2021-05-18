import 'package:flutter/material.dart';
import 'package:iupp_components/iupp_components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final generalStories = [
  Story(
    section: 'General',
    name: 'IAppBar',
    builder: (_, k) => IAppBar(
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
