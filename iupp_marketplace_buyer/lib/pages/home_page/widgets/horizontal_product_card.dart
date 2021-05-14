import 'package:flutter/material.dart';

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 21, right: 11, bottom: 50),
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
                  const SizedBox(height: 11),
                  Container(
                    width: 130,
                    height: 22,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF8416).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        'pontos em dobro',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
