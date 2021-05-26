import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core.dart';

import '../../presentation.dart';

class InstallmentOption {
  InstallmentOption({
    required this.quantity,
    required this.amount,
  });

  final int quantity;
  final double amount;
}

final installmentOptions = [
  InstallmentOption(quantity: 1, amount: 5999.20),
  InstallmentOption(quantity: 2, amount: 2999.60),
  InstallmentOption(quantity: 3, amount: 1999.70),
  InstallmentOption(quantity: 4, amount: 1499.80),
  InstallmentOption(quantity: 5, amount: 1199.84),
  InstallmentOption(quantity: 6, amount: 999.86),
  InstallmentOption(quantity: 7, amount: 857.02),
];

class InstallmentSelectionPage extends StatelessWidget {
  const InstallmentSelectionPage({
    Key? key,
    required this.cardTitle,
  }) : super(key: key);

  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: SizeConstants.pageSidePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: IconButton(
                  icon: const Icon(
                    IuppIcons.icone_contorno_S_seta_esquerda,
                    color: Color(0xFF0070D4),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              const SizedBox(height: SizeConstants.pageSidePadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Pagamento',
                    style: TextStyle(
                      color: Color(0xFF494C57),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Text(
                      'alterar',
                      style: TextStyle(
                        color: Color(0xFF0070D4),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Image.asset(
                    'assets/images/icon_mastercard.png',
                    package: 'iupp_components',
                  ),
                  const SizedBox(width: 16),
                  Text(
                    cardTitle,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: SizeConstants.pageSidePadding),
              const Text(
                'selecione o parcelamento',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConstants.pageSidePadding,
                ),
              ),
              const SizedBox(height: SizeConstants.pageSidePadding),
              ListView.separated(
                padding: const EdgeInsets.all(0),
                shrinkWrap: true,
                itemBuilder: (_, i) {
                  final quantity = installmentOptions[i].quantity;
                  final amount = installmentOptions[i].amount;
                  return ListTile(
                    dense: true,
                    title: Text(
                      '${quantity}x de ${formatMonetaryValue(amount)} ${quantity == 1 ? 'à vista' : 'sem juros'}',
                    ),
                    trailing: const Icon(
                      IuppIcons.icone_contorno_S_seta_direita,
                      color: Color(0xFF0070D4),
                    ),
                  );
                },
                separatorBuilder: (_, i) => const Divider(),
                itemCount: installmentOptions.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
