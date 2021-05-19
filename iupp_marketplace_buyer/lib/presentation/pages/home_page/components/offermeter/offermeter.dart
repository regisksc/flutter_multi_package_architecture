import 'package:flutter/material.dart';
import 'package:iupp_components/iupp_components.dart';

import '../products/products.dart';
import 'offermeter_header.dart';

class Offermeter extends StatelessWidget {
  const Offermeter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const OffermeterHeader(),
          HorizontalProductCard(
            borderRadiusGeometry: const BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            margin: const EdgeInsets.all(0),
            hasChipInfo: false,
            pickProductButton: IuppElevatedButton(
              text: 'eu quero',
              fontSize: 18,
              fontWeight: FontWeight.w700,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
