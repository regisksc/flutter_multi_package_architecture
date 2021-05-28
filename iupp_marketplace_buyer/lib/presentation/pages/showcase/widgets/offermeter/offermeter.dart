import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

import '../../../../../domain/entity/entities.dart';
import '../../../../widgets/widgets.dart';
import 'offermeter_header.dart';

class Offermeter extends StatelessWidget {
  const Offermeter(
    this.offers, {
    Key? key,
  }) : super(key: key);

  final List<OfferEntity> offers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const OffermeterHeader(),
          HorizontalProductCard(
            offers.first.product,
            borderRadiusGeometry: const BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            margin: const EdgeInsets.all(0),
            hasChipInfo: false,
            pickProductButton: IuppElevatedButton(
              text: 'eu quero',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
