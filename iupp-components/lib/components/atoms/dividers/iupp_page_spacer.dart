import 'package:iupp_core/core.dart';

import '../../components.dart';

class IuppPageSpacer extends StatelessWidget {
  const IuppPageSpacer({
    Key? key,
    this.height,
    this.width,
  }) : super(key: key);
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height ?? SizeConstants.pageSidePadding, width: width);
  }
}
