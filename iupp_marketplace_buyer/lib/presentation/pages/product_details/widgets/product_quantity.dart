import 'package:flutter/material.dart';
import 'package:iupp_components/iupp_components.dart';

class ProductQuantity extends StatelessWidget {
  const ProductQuantity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const IuppDivider(),
        ListTile(
          title: const Text.rich(
            TextSpan(
              text: 'Quantidade: ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: ' 1 unidade',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          contentPadding: const EdgeInsets.all(14),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IuppRoundedActionButton(
                onTap: () {},
                borderWidth: 0,
                backgroundColor: const Color(0xFFE1E4EC),
                child: const Icon(
                  IuppIcons.icone_contorno_M_minimizar_outline,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text('1'),
              ),
              IuppRoundedActionButton(
                onTap: () {},
                borderWidth: 2,
                child: const Icon(
                  IuppIcons.icone_contorno_M_mais,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        const IuppDivider()
      ],
    );
  }
}
