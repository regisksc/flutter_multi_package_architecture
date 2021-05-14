import 'package:flutter/material.dart';
import 'package:iupp_components/iupp_components.dart';

import 'widgets/banners.dart';
import 'widgets/brand_new_products.dart';
import 'widgets/more_points_promotion/more_points_promotion.dart';
import 'widgets/offermeter/offermeter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: AppBar(
        leading: const Icon(
          IuppIcons.icone_contorno_M_menu_hamburger,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF23232E),
        title: Image.asset('assets/logo_iupp.png'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              IuppIcons.icone_contorno_C_carrinho_outline,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Banners(),
            const SizedBox(height: 112),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const Align(
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
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: MorePointsPromotion(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
