import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 289,
      color: const Color(0xFFF4F4F4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 36),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Meios de pagamento',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Cartão de crédito',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 48),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Wrap(
              runSpacing: 35,
              spacing: 35,
              children: [
                IuppImage.asset('cartao_master.png'),
                IuppImage.asset('cartao_visa.png'),
                IuppImage.asset('cartao_elo.png'),
                IuppImage.asset('cartao_american_express.png'),
                IuppImage.asset('cartao_dinners_club.png'),
                IuppImage.asset('cartao_hipercard.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
