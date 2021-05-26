import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

import '../presentation.dart';

class IuppCheckoutButtonNavigate extends StatelessWidget {
  const IuppCheckoutButtonNavigate({
    Key? key,
    required this.label,
    required this.onpressed,
  }) : super(key: key);

  final String label;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(SizeConstants.pageSidePadding),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        width: double.maxFinite,
        height: 48,
        child: IuppElevatedButton(
          text: label,
          onPressed: onpressed,
        ),
      ),
    );
  }
}
