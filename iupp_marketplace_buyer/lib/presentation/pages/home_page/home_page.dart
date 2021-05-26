import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

import '../../widgets/widgets.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: IuppMarketplaceBuyerAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Banners(),
            SizedBox(height: 112),
            BrandNewProducts(),
            SizedBox(height: 44),
            Offermeter(),
            SizedBox(height: 36),
            MorePointsPromotion(),
            SizedBox(height: 36),
            SignInIuppContainer(),
            SizedBox(height: 52),
            IupperAdvantages(),
            TalkToUs(),
            SizedBox(height: 4),
            IuppSocialNetworks(),
            IuppFooter(),
          ],
        ),
      ),
    );
  }
}
