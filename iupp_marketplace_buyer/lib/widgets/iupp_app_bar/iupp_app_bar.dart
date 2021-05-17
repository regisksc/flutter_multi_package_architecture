import 'package:flutter/material.dart';
import 'package:iupp_components/iupp_components.dart';

class IuppAppBar extends AppBar {
  IuppAppBar({
    ShapeBorder? shapeBorder,
  }) : super(
          leading: const Icon(
            IuppIcons.iconeContornoMmenuHamburger,
            color: Colors.white,
          ),
          shape: shapeBorder,
          backgroundColor: const Color(0xFF23232E),
          title: Image.asset('assets/logo_iupp.png'),
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(
                IuppIcons.iconeContornoCCarrinhoOutline,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        );
}
