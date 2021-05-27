import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

import '../../../../domain/entity/entities.dart';

class ProductVariations extends StatelessWidget {
  const ProductVariations(
    this.variations, {
    Key? key,
  }) : super(key: key);

  final List<ProductVariationEntity>? variations;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, i) => ListTile(
        title: Text.rich(
          TextSpan(
            text: variations![i].name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            children: [
              TextSpan(
                text: ' ${variations![i].value}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('(+${variations![i].products.length})'),
            const Icon(
              IuppIcons.icone_contorno_S_seta_direita,
              color: Color(0xFF0070D4),
            ),
          ],
        ),
      ),
      separatorBuilder: (_, i) => const IuppDivider(),
      itemCount: variations?.length ?? 0,
    );
  }
}
