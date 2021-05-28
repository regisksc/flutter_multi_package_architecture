import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core.dart';
import 'package:iupp_core/core/dependencies/dependencies.dart';

import '../../presentation.dart';

class ProductDetailsRow extends StatelessWidget {
  const ProductDetailsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const orderItems = [
      OrderItem(
        imageURL: 'https://www.blitzmicro.eu/11082-medium_default/AP-MGDF3QLA.jpg',
        description: 'iPhone 12 Azul, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP',
        costInReal: 5999.20,
        costInPoints: 2500,
        deliveredBy: 'Entrega 01 por Magazine Luiza',
        expectedDelivery: 'Em até 3 dias úteis²',
      ),
      OrderItem(
        imageURL: 'https://www.blitzmicro.eu/11082-medium_default/AP-MGDF3QLA.jpg',
        description: 'Smartphone Motorola Moto G9 Play 64GB Duos 6.5" 4G Câm 48+2+2MP',
        costInReal: 1855.9,
        costInPoints: 733,
        deliveredBy: 'Entrega 02 por Top Store',
        expectedDelivery: 'Em até 8 dias úteis²',
      ),
    ];
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final item = orderItems[index];
        return Flex(
          direction: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: SizedBox(
                width: 60,
                height: 45,
                child: IuppImageCached(imageUrl: item.imageURL),
              ),
            ),
            Flexible(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(formatMonetaryValue(item.costInReal)),
                  Text(item.costInPoints.toString()),
                  Text(item.deliveredBy),
                  Text(item.expectedDelivery),
                ],
              ),
            )
          ],
        );
      },
      separatorBuilder: (_, __) => const IuppDivider(
        verticalPadding: SizeConstants.pageSidePadding,
      ),
      itemCount: orderItems.length,
    );
  }
}
