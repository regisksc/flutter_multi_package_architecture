import 'package:flutter/material.dart';
import 'package:iupp_checkout/presentation/pages/address_register/widgets/widgets.dart';
import 'package:iupp_components/iupp_components.dart';

class CheckoutAddressAppBar extends AppBar {
  CheckoutAddressAppBar({
    Key? key,
    required int step,
  }) : super(
          key: key,
          backgroundColor: const Color(0xFF23232E),
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Image.asset('assets/logo_iupp.png'),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                IuppIcons.icone_contorno_A_agencia_outline,
                color: Color(0xFF00EEE6),
                size: 28,
              ),
              IconSpacer(
                color: step >= 2 ? const Color(0xFF00EEE6) : Colors.white,
              ),
              Icon(
                IuppIcons.icone_contorno_C_caminhao,
                color: step >= 2 ? const Color(0xFF00EEE6) : Colors.white,
                size: 28,
              ),
              IconSpacer(
                color: step >= 3 ? const Color(0xFF00EEE6) : Colors.white,
              ),
              Icon(
                IuppIcons.icone_contorno_C_consorcio_outline,
                color: step >= 3 ? const Color(0xFF00EEE6) : Colors.white,
                size: 28,
              ),
              IconSpacer(
                color: step >= 3 ? const Color(0xFF00EEE6) : Colors.white,
              ),
              Icon(
                IuppIcons.icone_contorno_P_pagamento_ao_fornecedor_outline,
                color: step >= 3 ? const Color(0xFF00EEE6) : Colors.white,
                size: 28,
              ),
              const SizedBox(width: 10),
            ],
          ),
        );
}
