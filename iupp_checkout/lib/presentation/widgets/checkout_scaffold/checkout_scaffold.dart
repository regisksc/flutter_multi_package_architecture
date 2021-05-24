import 'package:flutter/material.dart';
import 'package:iupp_checkout/presentation/widgets/checkout_footer_text.dart';
import 'package:iupp_checkout/presentation/widgets/checkout_scaffold/molecules/checkout_footer.dart';
import 'package:iupp_checkout/presentation/widgets/checkout_scaffold/molecules/checkout_view.dart';
import 'package:iupp_components/components/components.dart';

class CheckoutScaffold extends StatelessWidget {
  const CheckoutScaffold({
    Key? key,
    required this.child,
    required this.whiteSpace,
    required this.title,
    this.appBar,
    this.aboveTitle,
  }) : super(key: key);

  final Widget child;
  final int whiteSpace;
  final String title;
  final AppBar? appBar;
  final Widget? aboveTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: appBar ??
          IuppAppBar(
            centered: true,
          ),
      body: CustomScrollView(
        slivers: [
          CheckoutView(
            aboveTitle: aboveTitle != null
                ? Padding(
                      padding:
                          const EdgeInsets.only(top: 24, left: 24, right: 24),
                      child: aboveTitle,
                    )
                : null,
            title: title,
            bellowTitle: child,
          ),
          CheckoutFooter(
            footerSpace: 3,
            padding: const EdgeInsets.only(bottom: 24),
            whiteSpace: whiteSpace,
            footer: const CheckoutFooterText(),
          ),
        ],
      ),
    );
  }
}
