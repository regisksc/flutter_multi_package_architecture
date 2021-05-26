import 'package:flutter/widgets.dart';

import '../../../presentation.dart';

class CheckoutHeaderInfo extends StatelessWidget {
  const CheckoutHeaderInfo({Key? key, required this.info}) : super(key: key);

  final Widget info;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(SizeConstants.pageSidePadding),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            info,
          ],
        ),
      ),
    );
  }
}
