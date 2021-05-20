import 'package:flutter/material.dart';
import 'package:iupp_checkout/presentation/pages/cart/widgets/cart_action_button_widget/cart_action_button.dart';
import 'package:iupp_components/iupp_components.dart';

class ItemCartWidget extends StatelessWidget {
  const ItemCartWidget(
      {Key? key,
      required this.photoUrl,
      required this.description,
      required this.sellerName,
      required this.price,
      required this.points,
      required this.count,
      required this.increment,
      required this.decrement})
      : super(key: key);

  final String photoUrl;
  final String description;
  final String sellerName;
  final String price;
  final String points;
  final int count;
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
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CartActionButton(
                        onTap: decrement,
                        icon: IuppIcons.icone_contorno_M_minimizar_outline),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        '$count',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    CartActionButton(
                        onTap: increment,
                        icon: IuppIcons.icone_contorno_M_mais),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("R\$ $price"),
                    Text(
                      'ganhe $points pontos¹',
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF1E8449),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
