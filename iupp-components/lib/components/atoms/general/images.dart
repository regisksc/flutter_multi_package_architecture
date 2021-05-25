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
