import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core/resources/formatters/formatters.dart';

import '../../../presentation.dart';
import 'widgets.dart';

class CheckoutItemCart extends StatelessWidget {
  const CheckoutItemCart({
    Key? key,
    required this.photoUrl,
    required this.description,
    required this.sellerName,
    required this.price,
    required this.points,
    required this.count,
    required this.increment,
    required this.decrement,
    this.expectedDeliveryDays,
  }) : super(key: key);

  final String photoUrl;
  final String description;
  final String sellerName;
  final double price;
  final String points;
  final int count;
  final int? expectedDeliveryDays;
  final VoidCallback increment;
  final VoidCallback decrement;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: Image.network(
                photoUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Vendido e entregue por',
                    style: TextStyle(
                      color: Color(0xFF7C7B8B),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    sellerName,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  if (expectedDeliveryDays != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text.rich(
                        TextSpan(
                          text: 'Em até',
                          children: [
                            TextSpan(
                              text: ' $expectedDeliveryDays dias úteis²',
                              style: const TextStyle(fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CheckoutActionButton(onTap: decrement, icon: IuppIcons.icone_contorno_M_minimizar_outline),
                SizedBox(
                  width: 32,
                  child: Center(
                    child: Text(
                      '$count',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                CheckoutActionButton(onTap: increment, icon: IuppIcons.icone_contorno_M_mais),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  formatMonetaryValue(price),
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xFF494C57),
                  ),
                ),
                Text(
                  'ganhe $points pontos¹',
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xFF1E8449),
                  ),
                )
              ],
            )
          ],
        ),
        const IuppDivider(verticalPadding: SizeConstants.pageSidePadding),
      ],
    );
  }
}
