import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resources/routes/routes.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      getPages: Routes.pages,
      initialRoute: _initialRoute,
    );
  }

  String get _initialRoute => '/';
}
