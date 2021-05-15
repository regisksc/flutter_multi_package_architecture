import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iupp_marketplace_buyer/pages/home_page/home_page.dart';
//import 'package:iupp_marketplace_buyer/pages/product_details/product_details_page.dart';

abstract class Routes {
  static final pages = Pages.pages;
  static const initial = 'initial';
  static const home = '/';
}

abstract class Pages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => Container(color: Colors.red),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      // bindings: HomeBindings(),
      // middlewares: middlewares,
      // settings: RouteSettings(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: Duration(milliseconds: 1400),
    ),
  ];
}
