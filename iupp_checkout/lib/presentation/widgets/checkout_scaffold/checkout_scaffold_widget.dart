import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

import '../../presentation.dart';
import '../checkout_footer_text.dart';
import 'molecules/molecules.dart';

class CheckoutScaffold extends StatelessWidget {
  const CheckoutScaffold({
    Key? key,
    required this.child,
    required this.title,
    this.appBar,
    this.aboveTitle,
    this.beforeTitleComponent,
  }) : super(key: key);

  final Widget child;
  final String title;
  final AppBar? appBar;
  final Widget? aboveTitle;
  final Widget? beforeTitleComponent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: appBar ?? IuppAppBar(centered: true),
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (beforeTitleComponent != null) beforeTitleComponent!,
                    CheckoutView(
                      aboveTitle: _aboveTitlePlaceholder(),
                      title: title,
                      bellowTitle: child,
                    ),
                    const Spacer(),
                    const CheckoutFooterText(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding? _aboveTitlePlaceholder() {
    if (aboveTitle != null) {
      return Padding(
        padding: const EdgeInsets.only(
            top: SizeConstants.pageSidePadding,
            left: SizeConstants.pageSidePadding,
            right: SizeConstants.pageSidePadding),
        child: aboveTitle,
      );
    }
  }
}
