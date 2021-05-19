import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iupp_components/iupp_components.dart';

import 'iupp_checkout_footer.dart';

class IuppCheckoutScafold extends StatelessWidget {
  const IuppCheckoutScafold({Key? key, required this.children})
      : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: IuppAppBar(
        centered: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 24),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: const Text(
                    'carrinho',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ...children,
              ],
            ),
          ),
          const IuppCheckoutFooter(),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
