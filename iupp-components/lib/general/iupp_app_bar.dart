import 'package:flutter/material.dart';

class IuppAppBar extends AppBar {
  IuppAppBar({
    ShapeBorder? shapeBorder,
    this.iuppLeading,
    this.iuppActions,
    this.centered = false,
  }) : super(
          leading: iuppLeading,
          shape: shapeBorder,
          centerTitle: centered,
          backgroundColor: const Color(0xFF23232E),
          title: Image.asset(
            'assets/images/logo_iupp.png',
            package: 'iupp_components',
          ),
          elevation: 0,
          actions: iuppActions,
        );

  final Widget? iuppLeading;
  final List<Widget>? iuppActions;
  final bool centered;
}
