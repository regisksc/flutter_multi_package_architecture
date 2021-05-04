import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class Routes {
  static final pages = [
    GetPage(
      name: 'home',
      page: () => Container(),
      // bindings: HomeBindings(),
      // middlewares: middlewares,
      // settings: RouteSettings(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: Duration(milliseconds: 1400),
    ),
  ];
}
