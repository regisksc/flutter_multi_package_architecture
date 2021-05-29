import 'package:flutter/material.dart';
import '../atoms/checkout_disclaimer.dart';

class CheckoutDisclaimers extends StatelessWidget {
  const CheckoutDisclaimers({
    Key? key,
    this.showPointsCreditDateDisclaimer = true,
    this.showDeliveryDisclaimer = true,
  }) : super(key: key);

  final bool showPointsCreditDateDisclaimer;
  final bool showDeliveryDisclaimer;

  static const disclaimers = [
    'Os pontos serão creditados em até 40 dias após a confirmação do pagamento.',
    'O prazo de entrega é iniciado no 1º dia útil após a confirmação do pagamento.',
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> disclaimersContent = [];

    if (showPointsCreditDateDisclaimer) {
      disclaimersContent.add(
        CheckoutDisclaimer(
          disclaimer: disclaimers[0],
          position: disclaimersContent.length + 1,
        ),
      );
    }

    if (showDeliveryDisclaimer) {
      disclaimersContent.add(
        CheckoutDisclaimer(
          disclaimer: disclaimers[1],
          position: disclaimersContent.length + 1,
        ),
      );
    }

    bool _isLast(Widget e) => e != disclaimersContent.last;
    return Column(
      children: disclaimersContent.map((e) => _isLast(e) ? _addSpaceAfter(e) : e).toList(),
    );
  }

  Column _addSpaceAfter(Widget e) => Column(children: [e, const SizedBox(height: 8)]);
}
