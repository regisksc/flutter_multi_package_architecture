import 'package:flutter/material.dart';

import '../iupp_components.dart';

class IAppBar extends AppBar {
  IAppBar({
    ShapeBorder? shapeBorder,
    this.iuppLeading,
    this.iuppActions,
  }) : super(
          leading: iuppLeading,
          shape: shapeBorder,
          backgroundColor: const Color(0xFF23232E),
          title: Image.asset('assets/images/logo_iupp.png'),
          elevation: 0,
          actions: iuppActions,
        );
  final Widget? iuppLeading;
  final List<Widget>? iuppActions;
}

/* class IAppBar extends AppBar {
  IAppBar({
    ShapeBorder? shapeBorder,
  }) : super(
          leading: const Icon(
            IuppIcons.iconeContornoMmenuHamburger,
            color: Colors.white,
          ),
          shape: shapeBorder,
          backgroundColor: const Color(0xFF23232E),
          title: Image.asset('assets/images/logo_iupp.png'),
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
} */
