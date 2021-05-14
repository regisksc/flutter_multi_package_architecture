import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class Routes {
  static final pages = Pages.pages;
  static const initial = 'initial';
  static const home = 'home';
}

abstract class Pages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => Container(color: Colors.red),
    ),
    GetPage(
      name: Routes.home,
      page: () => Container(),
      // bindings: HomeBindings(),
      // middlewares: middlewares,
      // settings: RouteSettings(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: Duration(milliseconds: 1400),
    ),
  ];
}
