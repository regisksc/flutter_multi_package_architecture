import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

import '../../../presentation.dart';

class CheckoutTitle extends StatelessWidget {
  const CheckoutTitle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(SizeConstants.pageSidePadding),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: SizeConstants.pageSidePadding,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
