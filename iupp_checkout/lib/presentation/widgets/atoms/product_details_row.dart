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
