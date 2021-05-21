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
  }) : super(key: key);

  final Widget child;
  final int whiteSpace;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: IuppAppBar(
        centered: true,
      ),
      body: CustomScrollView(
        slivers: [
          CheckoutView(title: 'carrinho', child: child),
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
