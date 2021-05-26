import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

class ProductCarouselImages extends StatelessWidget {
  const ProductCarouselImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: IuppCarrouselSlider(
        items: [
          IuppImage.network(
            'https://a-static.mlcdn.com.br/618x463/iphone-12-128gb-azul-apple/apple10/311984/b65d0329afb207994b5abccab391cc25.jpg',
          ),
          IuppImage.network(
            'https://a-static.mlcdn.com.br/1500x1500/iphone-12-128gb-azul-apple/apple10/311984/6507ebca2626ff2d4ec76109c01a8f9c.jpg',
          ),
          IuppImage.network(
            'https://a-static.mlcdn.com.br/1500x1500/iphone-12-128gb-azul-apple/apple10/311984/bdf1fa8c505a17f5d6a82d2c60899b14.jpg',
          ),
          IuppImage.network(
            'https://a-static.mlcdn.com.br/1500x1500/iphone-12-128gb-azul-apple/apple10/311984/be901917c83aedd20b26b1b8810ee1b9.jpg',
          ),
        ],
        carouselIndicator: CarouselIndicator.dots,
        carouselIndicatorContainerColor: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
