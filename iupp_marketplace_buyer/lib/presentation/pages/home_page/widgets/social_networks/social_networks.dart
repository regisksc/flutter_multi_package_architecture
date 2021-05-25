import 'package:flutter/material.dart';

import 'social_network_button.dart';

class SocialNetworks extends StatelessWidget {
  const SocialNetworks({Key? key}) : super(key: key);

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
                  Image.asset(
                    'assets/images/logo_iupp_white.png',
                    package: 'iupp_components',
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialNetworkButton(
                    imageAsset: 'assets/images/facebook.png',
                    onTap: () {},
                  ),
                  SocialNetworkButton(
                    imageAsset: 'assets/images/instagram.png',
                    onTap: () {},
                  ),
                  SocialNetworkButton(
                    imageAsset: 'assets/images/youtube.png',
                    onTap: () {},
                  ),
                  SocialNetworkButton(
                    imageAsset: 'assets/images/twitter.png',
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
