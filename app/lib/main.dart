import 'package:flutter/widgets.dart';

import 'main/app_widget.dart';
import 'main/configure_nonweb.dart'
    if (dart.library.html) 'main/configure_nonweb.dart';

void main() {
  configureApp();
  runApp(IuppApp());
}
