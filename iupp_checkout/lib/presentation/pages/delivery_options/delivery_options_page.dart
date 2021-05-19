import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iupp_checkout/presentation/widgets/iupp_address_app_bar.dart';
import 'package:iupp_checkout/presentation/widgets/iupp_checkout_footer.dart';
import 'package:iupp_components/iupp_components.dart';

import 'components/components.dart';

class DeliveryOptionsPage extends StatelessWidget {
  const DeliveryOptionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: IuppAddressAppBar(step: 2),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: BasicDeliveryInfo(),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: GeneralDeliveryInfo(),
            ),
            const Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                'opções de entrega',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const DeliveryCard(number: 1),
            const DeliveryCard(number: 2),
            Padding(
              padding: const EdgeInsets.all(24),
              child: IuppElevatedButton(
                text: 'ir para o pagamento',
                textPadding: const EdgeInsets.all(13),
                fontSize: 18,
                fontWeight: FontWeight.w700,
                onPressed: () {},
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
              child: Text(
                '¹ O prazo de entrega é iniciado no 1º dia útil após a confirmação do pagamento.',
                style: TextStyle(
                  color: Color(0xFF7C7B8B),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            const IuppCheckoutFooter(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
