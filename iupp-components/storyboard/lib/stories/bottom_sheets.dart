import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final bottomSheetsStories = [
  Story(
    section: 'BottomSheets',
    name: 'IuppBottomSheet',
    builder: (context, k) => ElevatedButton(
      onPressed: () => showIuppBottomSheet(
        context,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Deseja realmente excluir este produto do seu carrinho?',
            ),
            const SizedBox(height: 24),
            IuppElevatedButton(
              text: 'excluir produto',
              onPressed: () {},
            ),
            const SizedBox(height: 8),
            IuppOutlinedButton(
              text: 'manter no carrinho',
              onPressed: () {},
            ),
          ],
        ),
      ),
      child: const Text(
        'Show BottomSheet',
      ),
    ),
  ),
  Story(
    section: 'BottomSheets',
    name: 'IuppOverlayBottomSheet',
    builder: (context, k) => ElevatedButton(
      onPressed: () => showIuppOverlayBottomSheet(
        context,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Deseja realmente excluir este produto do seu carrinho?',
            ),
            const SizedBox(height: 24),
            IuppElevatedButton(
              text: 'excluir produto',
              onPressed: () {},
            ),
            const SizedBox(height: 8),
            IuppOutlinedButton(
              text: 'manter no carrinho',
              onPressed: () {},
            ),
          ],
        ),
      ),
      child: const Text(
        'Show BottomSheet with Overlay',
      ),
    ),
  ),
];
