import 'package:flutter/material.dart';
import 'package:iupp_components/styles/styles.dart';

class ChangeLabeledTextButton extends StatelessWidget {
  const ChangeLabeledTextButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        'alterar',
        style: IuppFonts.link,
      ),
    );
  }
}
