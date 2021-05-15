import 'package:flutter/material.dart';
import 'all_rights_reserved.dart';
import 'privacy_policy_and_use.dart';
import 'products_info.dart';

import 'institutional_info.dart';
import 'useful_links.dart';

class IuppGeneralInfo extends StatelessWidget {
  const IuppGeneralInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF353545),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 32, left: 24, right: 24, bottom: 32),
        child: Column(
          children: [
            const UsefulLinks(),
            const SizedBox(height: 24),
            const Divider(
              color: Color(0xFF7C7B8B),
            ),
            const SizedBox(height: 24),
            const ProductsInfo(),
            const SizedBox(height: 24),
            const InstitutionalInfo(),
            const SizedBox(height: 24),
            const PrivacyPolicyAndUse(),
            const SizedBox(height: 24),
            const AllRightsReserved(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
