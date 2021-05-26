import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';
import 'package:iupp_components/components/molecules/cards/cards.dart';
import 'package:iupp_core/core.dart';

import '../../../presentation.dart';
import '../../../widgets/widgets.dart';

class CheckoutEmptyCart extends StatelessWidget {
  const CheckoutEmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CheckoutTitle(title: 'carrinho'),
        const SizedBox(
          width: double.maxFinite,
          child: IuppCard(
            children: [
              Text(
                'Seu carrinho está vazio',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              Text(
                'Vá para o início e veja outras ofertas',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff494C57),
                ),
              ),
            ],
          ),
        ),
        IuppCheckoutButtonNavigate(
          label: 'ir para o início',
          onpressed: () => _showBotoomBar(context),
        ),
        const Spacer(),
        const CheckoutFooterText(),
      ],
    );
  }

  void _showBotoomBar(BuildContext context) {
    showIuppOverlayBottomSheet(
      context,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Deseja realmente ir para a página inicial?'),
          Container(
            margin: const EdgeInsets.only(
                top: SizeConstants.pageSidePadding, bottom: 12),
            width: double.maxFinite,
            child: IuppElevatedButton(
              text: 'ir para a página inicial',
              onPressed: () {
                NavigatorService().navigateTo('/home');
              },
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: IuppOutlinedButton(
              text: 'continuar por aqui',
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    );
  }
}
