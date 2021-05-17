import 'package:flutter/material.dart';

import 'components/components.dart';

class IuppFooter extends StatelessWidget {
  const IuppFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF353545),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 32, left: 24, right: 24, bottom: 32),
        child: Column(
          children: const [
            UsefulLinks(),
            SizedBox(height: 24),
            Divider(
              color: Color(0xFF7C7B8B),
            ),
            SizedBox(height: 24),
            ProductsInfo(),
            SizedBox(height: 24),
            InstitutionalInfo(),
            SizedBox(height: 24),
            PrivacyPolicyAndUse(),
            SizedBox(height: 24),
            AllRightsReserved(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
