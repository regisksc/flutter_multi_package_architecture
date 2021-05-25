import 'package:flutter/widgets.dart';

class IuppImage extends Image {
  IuppImage.asset(
    String name, {
    BoxFit? fit,
  }) : super(
          image: AssetImage('assets/images/$name', package: 'iupp_components'),
          fit: fit,
        );

  IuppImage.network(
    String url, {
    BoxFit? fit,
  }) : super(
          image: NetworkImage(url),
          fit: fit,
        );
}
