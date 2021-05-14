import 'package:flutter/material.dart';
import 'package:iupp_components/buttons/buttons.dart';

class TalkToUs extends StatelessWidget {
  const TalkToUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      color: Theme.of(context).primaryColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'alguma dúvida \nsobre o iupp?',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w700,
            ),
          ),
          IOutlinedButton(
            text: 'fale com a gente',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
