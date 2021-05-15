import 'package:flutter/material.dart';

class PrivacyPolicyAndUse extends StatelessWidget {
  const PrivacyPolicyAndUse({Key? key}) : super(key: key);

  final textStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Color(0xFFE1E4EC),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Políticas de privacidade',
          style: textStyle,
        ),
        const Spacer(),
        Text(
          'Termos de uso',
          style: textStyle,
        ),
        const Spacer(),
      ],
    );
  }
}
