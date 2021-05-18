import 'package:flutter/widgets.dart';
import 'package:iupp_core/navigator/arguments.dart';

typedef WidgetBuilderArgs = Widget Function(
    BuildContext context, Arguments? args);

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
