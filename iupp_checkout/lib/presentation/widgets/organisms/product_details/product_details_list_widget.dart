import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

import '../../../presentation.dart';

class ProductDetailsList extends StatelessWidget {
  const ProductDetailsList({Key? key, required this.items, this.canEditItems = false}) : super(key: key);
  final List<OrderItem> items;
  final bool canEditItems;

  @override
  Widget build(BuildContext context) {
    final itemCount = items.length;
    return SizedBox(
      height: ((ProductDetailsRow.height + SizeConstants.pageSidePadding) * itemCount).toDouble(),
      child: ListView.separated(
        itemCount: itemCount,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (_, __) => const IuppDivider(verticalPadding: SizeConstants.pageSidePadding),
        itemBuilder: (_, index) => ProductDetailsRow(orderItem: items[index], isEditable: canEditItems),
      ),
    );
  }
}
