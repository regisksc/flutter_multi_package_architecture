import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';

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
                  IuppImage.asset('logo_iupp_white.png'),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialNetworkButton(
                    imageAsset: 'facebook.png',
                    onTap: () {},
                  ),
                  SocialNetworkButton(
                    imageAsset: 'instagram.png',
                    onTap: () {},
                  ),
                  SocialNetworkButton(
                    imageAsset: 'youtube.png',
                    onTap: () {},
                  ),
                  SocialNetworkButton(
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
