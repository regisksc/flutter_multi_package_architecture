import 'package:flutter/material.dart';

class PrivacyPolicyAndUse extends StatelessWidget {
  const PrivacyPolicyAndUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Color(0xFFE1E4EC),
    );
    return Row(
      children: const [
        Text(
          'Políticas de privacidade',
          style: textStyle,
        ),
        Spacer(),
        Text(
          'Termos de uso',
          style: textStyle,
        ),
        Spacer(),
      ],
    );
  }
}
