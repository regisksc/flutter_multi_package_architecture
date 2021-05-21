import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

class TalkToUs extends StatelessWidget {
  const TalkToUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 24, bottom: 24),
            child: Text(
              'alguma dúvida \nsobre o iupp?',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 24),
            child: IuppOutlinedButton(
              text: 'fale com a gente',
              textPadding: const EdgeInsets.all(12),
              fontSize: 18,
              fontWeight: FontWeight.w700,
              borderRadius: 60,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
