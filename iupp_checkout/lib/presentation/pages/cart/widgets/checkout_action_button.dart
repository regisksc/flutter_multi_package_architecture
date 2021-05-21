import 'package:flutter/material.dart';
import 'package:iupp_components/buttons/iupp_rounded_action_button.dart';

class CheckoutActionButton extends StatelessWidget {
  const CheckoutActionButton({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IuppRoundedActionButton(
      onTap: onTap,
      borderColor: const Color(0xff23232E),
      child: Icon(
        icon,
        color: const Color(0xff23232E),
      ),
    );
  }
}
