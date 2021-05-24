import 'package:flutter/widgets.dart';

class CheckoutHeaderInfo extends StatelessWidget {
  const CheckoutHeaderInfo({Key? key, required this.info})
      : super(key: key);

  final Widget info;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(24),
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
