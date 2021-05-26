import 'dart:math';

import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core/dependencies/flutter_dependencies.dart';

import '../widgets.dart';

class OrderReviewSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final random = Random();

    const listOfTotalPrice = ['R\$ 5.999,20 à vista', 'R\$ 7.855,10 à vista'];
    const listOfPoints = ['ganhe 2.500 pontos¹', 'ganhe 3.233 pontos¹'];
    const listOfDeliveryLimit = ['R\$ 25,70', 'Grátis'];

    const max = 3;
    const last = max - 1;

    final position = random.nextInt(last);

    final productTotal = listOfTotalPrice[position];
    final deliveryLimit = listOfDeliveryLimit[position];
    final points = listOfPoints[position];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          OrderReviewInfoRow(
            information: 'Produto',
            value: productTotal,
          ),
          OrderReviewInfoRow(
            information: 'Frete',
            value: deliveryLimit,
            highlightValue: deliveryLimit.contains('Grátis'),
          ),
          const IuppDivider(),
          SizedBox(height: size.height * 0.02),
          OrderReviewInfoRow(
            information: 'Pagamento',
            value: '1x de $productTotal',
          ),
          const IuppDivider(),
          OrderReviewInfoRow(
            information: 'Total',
            value: productTotal,
            bold: true,
          ),
          OrderReviewInfoRow(
            information: '',
            value: points,
            highlightValue: true,
          ),
        ],
      ),
    );
  }
}
