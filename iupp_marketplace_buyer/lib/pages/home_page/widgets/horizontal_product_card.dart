import 'package:flutter/material.dart';
import 'package:iupp_components/buttons/i_elevated_button.dart';

import 'product_chip_info.dart';

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard({
    Key? key,
    this.borderRadiusGeometry,
    this.margin,
    this.hasChipInfo = true,
    this.pickProductButton,
  }) : super(key: key);

  final BorderRadiusGeometry? borderRadiusGeometry;
  final EdgeInsets? margin;
  final bool hasChipInfo;
  final IElevatedButton? pickProductButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          const BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            blurRadius: 16,
          ),
        ],
      ),
      child: Card(
        margin: margin,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadiusGeometry ?? BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 21,
                    right: 11,
                    bottom: 50,
                  ),
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.network(
                      'https://a-static.mlcdn.com.br/1500x1500/notebook-samsung-intel-core-i7-10510u-16gb-1tb-128gb-ssd-tela-de-156-prata-book-x55-np550xcj-xs2br/fastshop2/sgnp550xcjxs2b/be7f5ba9189a577a9131bd9068d24ef4.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18, right: 46),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '''Notebook Samsung, Intel® Core™ i7 10510U, 16GB, 1TB + 128GB SS''',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'R\$ 2.999,00',
                          style: TextStyle(
                            color: Color(0xFF7C7B8B),
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        const Text(
                          'R\$ 2.499,00',
                          style: TextStyle(
                            color: Color(0xFF3B3C45),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          'ganhe 2.000 prontos',
                          style: TextStyle(
                            color: Color(0xFFEC7000),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        if (hasChipInfo) ...[
                          const SizedBox(height: 11),
                          const ProductChipInfo(
                            color: Color(0xFFFF8416),
                            label: 'pontos em dobro',
                          ),
                        ]
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (pickProductButton != null)
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: pickProductButton!,
              )
          ],
        ),
      ),
    );
  }
}
