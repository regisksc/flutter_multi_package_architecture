import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core.dart';

import '../../../../domain/entity/entities.dart';

class PaymentInfo extends StatelessWidget {
  const PaymentInfo(
    this.installments, {
    Key? key,
  }) : super(key: key);

  final List<InstallmentEntity> installments;

  @override
  Widget build(BuildContext context) {
    final firstInstallment = installments.first;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const IuppDivider(),
        ListTile(
          leading: const Icon(
            IuppIcons.icone_contorno_C_cartao_outline,
            color: Colors.black,
          ),
          title: Text.rich(
            TextSpan(
              text: 'Em até ',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: '${firstInstallment.number}x de ${formatMonetaryValue(firstInstallment.value)} ',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const TextSpan(
                  text: 'sem juros',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          trailing: const Icon(
            IuppIcons.icone_contorno_S_seta_direita,
            color: Color(0xFF0070D4),
          ),
        ),
      ],
    );
  }
}
