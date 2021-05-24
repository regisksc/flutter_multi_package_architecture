import 'package:flutter/widgets.dart';
import 'package:iupp_checkout/presentation/widgets/checkout_scaffold/atoms/checkout_title.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({
    Key? key,
    this.aboveTitle,
    this.bellowTitle,
    required this.title,
  }) : super(key: key);

  final Widget? aboveTitle;
  final String title;
  final Widget? bellowTitle;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(0.0),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            if (aboveTitle != null)
              aboveTitle!,
            CheckoutTitle(title: title),
            if (bellowTitle != null)
              bellowTitle!,
          ],
        ),
      ),
    );
  }
}
