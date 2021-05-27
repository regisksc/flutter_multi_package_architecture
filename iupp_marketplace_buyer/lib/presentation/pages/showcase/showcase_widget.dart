import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iupp_components/components/components.dart';

import '../../widgets/widgets.dart';
import 'cubit/showcase_cubit.dart';
import 'widgets/widgets.dart';

class ShowcaseWidget extends StatelessWidget {
  const ShowcaseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: IuppMarketplaceBuyerAppBar(),
      body: BlocBuilder<ShowcaseCubit, ShowcaseState>(
        builder: (_, state) {
          if (state is ShowcaseLoadedSuccess) {
            final showcase = state.showcase!;
            final categorizedProducts = showcase.categorizedProducts;
            final brandNewProductsCategory = categorizedProducts.firstWhere(
                (categorizedProduct) =>
                    categorizedProduct.category == 'Brand New');
            final morePointsProductsCategory = categorizedProducts.firstWhere(
                (categorizedProduct) =>
                    categorizedProduct.category == 'More Points');
            return SingleChildScrollView(
              child: Column(
                children: [
                  Banners(showcase.banners),
                  const SizedBox(height: 112),
                  BrandNewProducts(brandNewProductsCategory.products),
                  const SizedBox(height: 44),
                  Offermeter(showcase.offers),
                  const SizedBox(height: 36),
                  MorePointsPromotion(morePointsProductsCategory.products),
                  const SizedBox(height: 36),
                  const IupperAdvantages(),
                  const TalkToUs(),
                  const IuppSocialNetworks(),
                  const IuppFooter(),
                ],
              ),
            );
          } else if (state is ShowcaseLoadedFailed) {
            return const Center(
              child: Text('Deu ruim'),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
