import 'package:flutter/material.dart';

import '../../components.dart';

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
          title: IuppImage.asset('logo_iupp.png'),
          elevation: 0,
          actions: iuppActions,
        );

  final Widget? iuppLeading;
  final List<Widget>? iuppActions;
  final bool centered;
}
