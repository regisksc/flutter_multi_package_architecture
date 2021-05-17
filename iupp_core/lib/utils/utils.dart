import 'package:flutter/widgets.dart';
import '../core.dart';

typedef WidgetBuilderArgs = Widget Function(
    BuildContext context, Arguments? args);

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
