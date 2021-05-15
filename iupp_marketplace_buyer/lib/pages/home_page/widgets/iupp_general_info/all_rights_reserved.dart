import 'package:flutter/material.dart';

class AllRightsReserved extends StatelessWidget {
  const AllRightsReserved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          '© 2021 IUPP - Todos os direitos reservados.',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFFE1E4EC),
          ),
        ),
      ],
    );
  }
}
