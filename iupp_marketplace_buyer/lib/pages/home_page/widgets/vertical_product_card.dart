import 'package:flutter/material.dart';
import 'package:iupp_marketplace_buyer/pages/home_page/widgets/product_chip_info.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.freeShipping,
  }) : super(key: key);

  final String title;
  final String imageUrl;
  final bool freeShipping;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          const BoxShadow(
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
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                title,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              const Text(
                'R\$ 2.499,00',
                style: TextStyle(
                  color: Color(0xFF7C7B8B),
                  fontSize: 12,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const Text(
                'R\$ 1.999,00',
                style: TextStyle(
                  color: Color(0xFF3B3C45),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 11),
              ProductChipInfo(
                color: Color(freeShipping ? 0xFF00A29C : 0xFF1791FF)
                    .withOpacity(0.2),
                label: freeShipping ? 'frete grátis' : 'pré-lançamento',
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
