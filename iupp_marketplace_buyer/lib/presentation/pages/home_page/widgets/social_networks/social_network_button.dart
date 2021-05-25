import 'package:flutter/material.dart';

class SocialNetworkButton extends StatelessWidget {
  const SocialNetworkButton({
    Key? key,
    required this.imageAsset,
    required this.onTap,
  }) : super(key: key);

  final String imageAsset;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: const Color(0xFF353545),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.asset(imageAsset, package: 'iupp_components'),
      ),
    );
  }
}
