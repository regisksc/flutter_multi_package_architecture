import 'package:flutter/widgets.dart';
import 'checkout_title.dart';

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
    return Flex(
      direction: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (aboveTitle != null) aboveTitle!,
        CheckoutTitle(title: title),
        if (bellowTitle != null) bellowTitle!,
      ],
    );
  }
}
