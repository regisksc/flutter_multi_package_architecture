import 'package:flutter/material.dart';

import '../../components.dart';

class IuppSocialNetworks extends StatelessWidget {
  const IuppSocialNetworks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      color: const Color(0xFF23232E),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  IuppImage.asset('logo_iupp_white.png'),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _SocialNetworkButton(
                    key: const ValueKey('facebook-btn'),
                    imageAsset: 'facebook.png',
                    onTap: () {},
                  ),
                  _SocialNetworkButton(
                    key: const ValueKey('instagram-btn'),
                    imageAsset: 'instagram.png',
                    onTap: () {},
                  ),
                  _SocialNetworkButton(
                    key: const ValueKey('youtube-btn'),
                    imageAsset: 'youtube.png',
                    onTap: () {},
                  ),
                  _SocialNetworkButton(
                    key: const ValueKey('twitter-btn'),
                    imageAsset: 'twitter.png',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SocialNetworkButton extends StatelessWidget {
  const _SocialNetworkButton({
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
        child: IuppImage.asset(imageAsset),
      ),
    );
  }
}