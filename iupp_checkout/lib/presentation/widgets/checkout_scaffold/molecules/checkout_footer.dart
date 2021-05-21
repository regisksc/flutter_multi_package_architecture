import 'package:flutter/material.dart';

class CheckoutFooter extends StatelessWidget {
  const CheckoutFooter({
    Key? key,
    required this.footerSpace,
    required this.footer,
    required this.whiteSpace,
    this.padding = const EdgeInsets.all(0),
  }) : super(key: key);

  /// insert flex value to white space
  final int whiteSpace;

  /// insert flex value to footer space
  final int footerSpace;

  /// insert footer widget
  final Widget footer;

  /// padding
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          Expanded(
            flex: whiteSpace,
            child: Container(),
          ),
          Expanded(
            flex: footerSpace,
            child: Padding(
              padding: padding,
              child: footer,
            ),
          ),
        ],
      ),
    );
  }
}
