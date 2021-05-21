import 'package:flutter/material.dart';
import 'package:iupp_components/iupp_components.dart';
import 'package:iupp_marketplace_buyer/presentation/pages/product_details/widgets/shipping_info.dart';
import 'package:iupp_marketplace_buyer/presentation/widgets/widgets.dart';

import 'widgets/widgets.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IuppMarketplaceBuyerAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            SizedBox(height: 16),
            ProductDetailsHeader(),
            ProductCarouselImages(),
            SizedBox(height: 24),
            ProductInfo(),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: ProductPriceInfo(),
            ),
            SizedBox(height: 24),
            PaymentInfo(),
            ShippingInfo(),
            ProductQuantity(),
            SizedBox(height: 26),
            ProductActions(),
            SizedBox(height: 48),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: WhoBoughtAlsoSaw(),
            ),
            SizedBox(height: 46),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: IuppHighlightsProducts(),
            ),
            SizedBox(height: 84),
            PaymentOptions(),
            IuppFooter(),
          ],
        ),
      ),
    );
  }
}
