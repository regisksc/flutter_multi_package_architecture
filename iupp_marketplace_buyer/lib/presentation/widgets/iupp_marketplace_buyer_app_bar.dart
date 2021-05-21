import 'package:flutter/material.dart';
import 'package:iupp_components/iupp_components.dart';

class IuppMarketplaceBuyerAppBar extends IuppAppBar {
  IuppMarketplaceBuyerAppBar()
      : super(
          iuppLeading: const Icon(
            IuppIcons.icone_contorno_M_menu_hamburger,
            color: Colors.white,
            size: 40,
          ),
          iuppActions: [
            IconButton(
              icon: const Icon(
                IuppIcons.icone_contorno_C_carrinho_outline,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 20),
          ],
        );
}
