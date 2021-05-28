import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iupp_components/components/components.dart';

import '../../../../domain/entity/entities.dart';
import 'widgets.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo(
    this.product, {
    Key? key,
  }) : super(key: key);

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            product.description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text(
            'Código: ${product.sku}',
            style: const TextStyle(
              color: Color(0xFF7C7B8B),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text.rich(
            TextSpan(
              text: 'Vendido e entregue por ',
              style: const TextStyle(
                color: Color(0xFF7C7B8B),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: product.sellerName,
                  style: const TextStyle(
                    color: Color(0xFF7C7B8B),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 33),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              const Icon(
                IuppIcons.icone_solidos_F_favorito,
                color: Color(0xFF007DED),
              ),
              const Icon(
                IuppIcons.icone_solidos_F_favorito,
                color: Color(0xFF007DED),
              ),
              const Icon(
                IuppIcons.icone_solidos_F_favorito,
                color: Color(0xFF007DED),
              ),
              const Icon(
                IuppIcons.icone_solidos_F_favorito,
                color: Color(0xFF007DED),
              ),
              const Icon(
                IuppIcons.icone_solidos_F_favorito,
                color: Color(0xFFE1E4EC),
              ),
              const SizedBox(width: 8),
              const Text(
                '(12)',
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  elevation: 0,
                  child: const Icon(
                    IuppIcons.icone_contorno_C_compartilhar_outline,
                    size: 32,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        const IuppDivider(),
        ProductVariations(product.variations),
        const IuppDivider(),
      ],
    );
  }
}
