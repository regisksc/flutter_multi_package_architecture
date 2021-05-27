import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core.dart';

import '../../domain/entity/entities.dart';
import '../resources/constants/constants.dart';
import 'widgets.dart';

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard(
    this.product, {
    Key? key,
    this.borderRadiusGeometry,
    this.margin,
    this.hasChipInfo = true,
    this.pickProductButton,
  }) : super(key: key);

  final ProductEntity product;
  final BorderRadiusGeometry? borderRadiusGeometry;
  final EdgeInsets? margin;
  final bool hasChipInfo;
  final IuppElevatedButton? pickProductButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => NavigatorService().navigateTo(PRODUCT_PAGE, data: product),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              blurRadius: 16,
            ),
          ],
        ),
        child: Card(
          margin: margin,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadiusGeometry ?? BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      left: 21,
                      right: 11,
                      bottom: 50,
                    ),
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: IuppImageCached(
                        imageUrl: product.imageUrls.first,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18, right: 46),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.description,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            formatMonetaryValue(product.fakePrice),
                            style: const TextStyle(
                              color: Color(0xFF7C7B8B),
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            formatMonetaryValue(product.price),
                            style: const TextStyle(
                              color: Color(0xFF3B3C45),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'ganhe ${product.points} prontos',
                            style: const TextStyle(
                              color: Color(0xFFEC7000),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          if (hasChipInfo) ...[
                            const SizedBox(height: 11),
                            const ProductChipInfo(
                              color: Color(0xFFFF8416),
                              label: 'pontos em dobro',
                            ),
                          ]
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              if (pickProductButton != null)
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: pickProductButton,
                )
            ],
          ),
        ),
      ),
    );
  }
}
