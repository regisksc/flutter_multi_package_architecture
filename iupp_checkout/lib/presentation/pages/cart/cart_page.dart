import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iupp_checkout/presentation/widgets/widgets.dart';
import 'package:iupp_components/iupp_icons.dart';

import 'cart_controller.dart';
import 'widgets/widgets.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late CartController controller;
  @override
  void initState() {
    controller = CartController();
    controller.cartNotifier.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IuppCheckoutScafold(
      children: [
        if (!controller.isEmpty)
          const EmptyCart()
        else
          Container(
            padding: const EdgeInsets.all(24),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: Image.network(
                            'https://a-static.mlcdn.com.br/1400x1500/notebook-samsung-intel-core-i7-10510u-16gb-1tb-128gb-ssd-tela-de-156-prata-book-x55-np550xcj-xs2br/fastshop2/sgnp550xcjxs2b/be7f5ba9189a577a9131bd9068d24ef4.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                  'iPhone 12 Preto, com Tela de 6,1", 5G, 128 GB e Câmera Dupla de 12MP...'),
                              SizedBox(height: 8),
                              Text(
                                'Vendido e entregue por',
                                style: TextStyle(
                                  color: Color(0xFF7C7B8B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Magazine Luiza',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CartActionButton(
                                    onTap: () =>
                                        controller.incrementItem('itemId'),
                                    icon: IuppIcons
                                        .icone_contorno_M_minimizar_outline),
                                const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    '10',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                CartActionButton(
                                    onTap: () =>
                                        controller.decrementItem('itemId'),
                                    icon: IuppIcons.icone_contorno_M_mais),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("R 5.999.20 à vista"),
                                Text(
                                  'ganhe 2.500 pontos¹',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF1E8449),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Divider(
                    color: Color(0xFFE1E4EC),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
