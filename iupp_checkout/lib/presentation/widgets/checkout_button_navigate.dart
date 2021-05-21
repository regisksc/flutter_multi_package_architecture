import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

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
        margin: const EdgeInsets.only(top: 24),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        width: 312,
        height: 48,
        child: IuppElevatedButton(
          text: label,
          fontSize: 18,
          onPressed: onpressed,
        ),
      ),
    );
  }
}
