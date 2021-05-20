import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iupp_components/iupp_components.dart';

import 'iupp_checkout_footer.dart';

class IuppCheckoutScafold extends StatelessWidget {
  const IuppCheckoutScafold({
    Key? key,
    required this.child,
    required this.flexSpace,
    this.flexFooter = 3,
  }) : super(key: key);

  final Widget child;
  final int flexSpace;
  final int flexFooter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: IuppAppBar(
        centered: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                child: const Text(
                  'carrinho',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              child,
              /* const SizedBox(height: 200), */
              const SizedBox(height: 48),
              const Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: IuppCheckoutFooter(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/** */

/* CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(0.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: const EdgeInsets.all(24),
                    child: const Text(
                      'carrinho',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  child,
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  flex: flexSpace,
                  child: Container(),
                ),
                Expanded(
                  flex: flexFooter,
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 24),
                    child: IuppCheckoutFooter(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ), */