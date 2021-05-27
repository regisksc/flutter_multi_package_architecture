import 'package:flutter/material.dart';

import 'iupper_advantage_tile.dart';

class IupperAdvantages extends StatelessWidget {
  const IupperAdvantages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 402,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 42, top: 32),
            child: Text(
              'vantagens de \nser iupper',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 49),
          IupperAdvantageTile(
            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
            color: Color(0xFFFF7A01),
          ),
          IupperAdvantageTile(
            text:
                '''Lorem ipsum dolor sit amet, consectetur adipiscing elit \nlorem dollr''',
            color: Color(0xFF23232E),
          ),
          IupperAdvantageTile(
            text:
                '''Sit amet, consectetur \nadipiscing elit lorem dollr \ndollor''',
            color: Color(0xFF00EEE6),
            isLast: true,
          ),
        ],
      ),
    );
  }
}
