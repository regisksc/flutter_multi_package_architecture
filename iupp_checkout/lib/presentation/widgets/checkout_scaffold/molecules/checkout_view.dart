import 'package:flutter/widgets.dart';
import 'package:iupp_checkout/presentation/widgets/checkout_scaffold/atoms/checkout_title.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({Key? key, required this.child, required this.title})
      : super(key: key);
  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(0.0),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            CheckoutTitle(title: title),
            child,
          ],
        ),
      ),
    );
  }
}
