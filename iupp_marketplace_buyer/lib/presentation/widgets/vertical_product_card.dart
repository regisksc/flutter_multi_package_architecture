import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core.dart';

import '../../domain/entity/entities.dart';
import '../resources/resources.dart';
import 'widgets.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard(
    this.product, {
    Key? key,
    required this.freeShipping,
    required this.preLaunch,
    required this.morePoints,
  }) : super(key: key);

  final ProductEntity product;
  final bool freeShipping;
  final bool preLaunch;
  final bool morePoints;

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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 14,
                  ),
                  child: SizedBox(
                    width: 128,
                    height: 131,
                    child: IuppImageCached(
                      imageUrl: product.imageUrls.first,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: Text(
                    product.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
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
                const SizedBox(height: 11),
                SizedBox(
                  height: 22,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      if (preLaunch)
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: ProductChipInfo(
                            color: const Color(0xFF1791FF).withOpacity(0.2),
                            label: 'pré-lançamento',
                          ),
                        ),
                      if (freeShipping)
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: ProductChipInfo(
                            color: const Color(0xFF00A29C).withOpacity(0.2),
                            label: 'frete grátis',
                          ),
                        ),
                      if (morePoints)
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: ProductChipInfo(
                            color: const Color(0xFFFF8416).withOpacity(0.2),
                            label: 'triplo de pontos',
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
