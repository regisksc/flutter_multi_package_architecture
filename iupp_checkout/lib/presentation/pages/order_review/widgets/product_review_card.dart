import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core/dependencies/flutter_dependencies.dart';

import '../../../presentation.dart';

class ProductReviewCard extends StatelessWidget {
  const ProductReviewCard({
    Key? key,
    required this.amountOfProducts,
  }) : super(key: key);
  final int amountOfProducts;

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
    return CheckoutInformationCard(
      headerLabel: amountOfProducts > 1 ? 'Produtos ($amountOfProducts)' : 'Produto',
      headerOnChange: () {},
      child: Column(
        children: const [
          IuppPageSpacer(),
          ProductDetailsList(items: orderItems, canEditItems: true),
        ],
      ),
    );
  }
}
