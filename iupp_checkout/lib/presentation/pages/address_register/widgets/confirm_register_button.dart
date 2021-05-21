import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

class ConfirmRegisterButton extends StatelessWidget {
  const ConfirmRegisterButton({
    Key? key,
    required this.isLoading,
    required this.onPressed,
  }) : super(key: key);

  final bool isLoading;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IuppElevatedButton(
      text: 'confirmar endereço',
      isLoading: isLoading,
      textPadding: const EdgeInsets.all(13),
      fontSize: 18,
      fontWeight: FontWeight.w700,
      onPressed: onPressed,
    );
  }
}
