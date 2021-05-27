import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/widgets.dart';

class IuppImage extends Image {
  IuppImage.asset(
    String name, {
    Key? key,
    BoxFit? fit,
  }) : super(
          key: key,
          image: AssetImage('assets/images/$name', package: 'iupp_components'),
          fit: fit,
        );

  IuppImage.network(
    String url, {
    Key? key,
    BoxFit? fit,
  }) : super(
          key: key,
          image: NetworkImage(url),
          fit: fit,
        );
}

class IuppImageCached extends StatelessWidget {
  const IuppImageCached({
    Key? key,
    required this.imageUrl,
    this.fit = BoxFit.fill,
  }) : super(key: key);

  final String imageUrl;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return FancyShimmerImage(
      imageUrl: imageUrl,
      boxFit: fit,
    );
  }
}