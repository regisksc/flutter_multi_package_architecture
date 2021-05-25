import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

import '../checkout_footer_text.dart';
import 'molecules/molecules.dart';

class CheckoutScaffold extends StatelessWidget {
  const CheckoutScaffold({
    Key? key,
    required this.child,
    required this.whiteSpace,
    required this.title,
    this.appBar,
    this.aboveTitle,
    this.beforeTitleComponent,
  }) : super(key: key);

  final Widget child;
  final int whiteSpace;
  final String title;
  final AppBar? appBar;
  final Widget? aboveTitle;
  final Widget? beforeTitleComponent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: appBar ?? IuppAppBar(centered: true),
      body: CustomScrollView(
        slivers: [
          if (beforeTitleComponent != null) beforeTitleComponent!,
          CheckoutView(
            aboveTitle: _aboveTitlePlaceholder(),
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

  Padding? _aboveTitlePlaceholder() {
    if (aboveTitle != null) {
      return Padding(
        padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
        child: aboveTitle,
      );
    }
  }
}
