import 'package:flutter/material.dart';

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
                Image.asset(
                  'assets/images/cartao_master.png',
                  package: 'iupp_components',
                ),
                Image.asset(
                  'assets/images/cartao_visa.png',
                  package: 'iupp_components',
                ),
                Image.asset(
                  'assets/images/cartao_elo.png',
                  package: 'iupp_components',
                ),
                Image.asset(
                  'assets/images/cartao_american_express.png',
                  package: 'iupp_components',
                ),
                Image.asset(
                  'assets/images/cartao_dinners_club.png',
                  package: 'iupp_components',
                ),
                Image.asset(
                  'assets/images/cartao_hipercard.png',
                  package: 'iupp_components',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
