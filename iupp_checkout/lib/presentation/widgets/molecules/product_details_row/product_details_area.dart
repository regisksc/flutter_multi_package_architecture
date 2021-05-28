import 'package:iupp_components/components/components.dart';
import 'package:iupp_components/styles/styles.dart';
import 'package:iupp_core/core.dart';

import '../../../presentation.dart';

class ProductDetailsArea extends StatelessWidget {
  const ProductDetailsArea({
    Key? key,
    required this.orderItem,
  }) : super(key: key);

  final OrderItem orderItem;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              width: 60,
              height: 45,
              child: IuppImage.network(orderItem.imageURL),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _description()),
                const IuppPageSpacer(height: 4),
                Expanded(child: _priceAndEarnedPoints()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _priceAndEarnedPoints() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          formatMonetaryValue(orderItem.costInReal),
          style: IuppFonts.description,
        ),
        Text(
          'ganhe ${orderItem.costInPoints.toStringAsFixed(0)} pontos¹',
          style: IuppFonts.highlightedDescription,
        ),
      ],
    );
  }

  Text _description() {
    return Text(
      orderItem.description,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: IuppFonts.description,
    );
  }
}
