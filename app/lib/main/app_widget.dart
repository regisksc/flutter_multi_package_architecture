import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resources/routes/routes.dart';
import 'theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      getPages: Routes.pages,
      initialRoute: _initialRoute,
    );
  }

  String get _initialRoute => '/';
}
