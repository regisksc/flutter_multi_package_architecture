import 'package:flutter/material.dart';

import 'package:iupp_components/iupp_components.dart';
import 'components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: IuppAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Banners(),
            const SizedBox(height: 112),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: const [
                  Align(
                    alignment: Alignment.topLeft,
                    child: BrandNewProducts(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 44),
            const Offermeter(),
            const SizedBox(height: 36),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: const [
                  Align(
                    alignment: Alignment.topLeft,
                    child: MorePointsPromotion(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 36),
            const SignInIuppContainer(),
            const SizedBox(height: 52),
            const IupperAdvantages(),
            const TalkToUs(),
            const SizedBox(height: 4),
            const SocialNetworks(),
            const IuppFooter(),
          ],
        ),
      ),
    );
  }
}
