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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/logo_iupp_white.png'),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialNetworkButton(
                    imageAsset: 'assets/facebook.png',
                    onTap: () {},
                  ),
                  SocialNetworkButton(
                    imageAsset: 'assets/instagram.png',
                    onTap: () {},
                  ),
                  SocialNetworkButton(
                    imageAsset: 'assets/youtube.png',
                    onTap: () {},
                  ),
                  SocialNetworkButton(
                    imageAsset: 'assets/twitter.png',
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
