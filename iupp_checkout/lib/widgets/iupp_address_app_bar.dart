import 'package:flutter/material.dart';
import 'package:iupp_checkout/pages/address_register/components/icon_spacer.dart';
import 'package:iupp_components/iupp_components.dart';

class IuppAddressAppBar extends AppBar {
  IuppAddressAppBar({Key? key})
      : super(
          key: key,
          backgroundColor: const Color(0xFF23232E),
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Image.asset('assets/logo_iupp.png'),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(
                IuppIcons.iconeContornoAAgenciaOutline,
                color: Color(0xFF00EEE6),
                size: 28,
              ),
              IconSpacer(),
              Icon(
                IuppIcons.iconeContornoCCaminhao,
                color: Colors.white,
                size: 28,
              ),
              IconSpacer(),
              Icon(
                IuppIcons.iconeContornoCConsorcioOutline,
                color: Colors.white,
                size: 28,
              ),
              IconSpacer(),
              Icon(
                IuppIcons.iconeContornoPPagamentoAoFornecedorOutline,
                color: Colors.white,
                size: 28,
              ),
              SizedBox(width: 10),
            ],
          ),
        );
}
