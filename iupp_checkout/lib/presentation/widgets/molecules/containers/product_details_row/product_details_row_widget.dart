import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_core/core/dependencies/dependencies.dart';

import '../../../../presentation.dart';

class ProductDetailsRow extends StatelessWidget {
  const ProductDetailsRow({
    this.isEditable = false,
    Key? key,
    required this.orderItem,
  }) : super(key: key);
  final bool isEditable;
  final OrderItem orderItem;

  static const double height = 186;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        children: [
          ProductDetailsArea(orderItem: orderItem),
          const IuppPageSpacer(height: 16),
          DeliveryDetailsArea(orderItem: orderItem, isEditable: isEditable),
        ],
      ),
    );
  }
}
