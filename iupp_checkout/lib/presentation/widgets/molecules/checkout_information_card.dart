import 'package:iupp_components/components/components.dart';
import 'package:iupp_components/styles/styles.dart';
import 'package:iupp_core/core.dart';

import '../../presentation.dart';

class CheckoutInformationCard extends StatelessWidget {
  const CheckoutInformationCard({
    Key? key,
    required this.child,
    this.height,
    this.headerLabel,
    this.headerOnChange,
  }) : super(key: key);
  final Widget child;
  final double? height;
  final String? headerLabel;
  final Function()? headerOnChange;

  @override
  Widget build(BuildContext context) {
    if (headerLabel != null) assert(headerOnChange != null);
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(SizeConstants.pageSidePadding),
          child: Column(
            children: [
              if (headerLabel != null) _header(),
              child,
            ],
          ),
        ),
      ),
    );
  }

  Column _header() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              headerLabel!,
              style: IuppFonts.descriptionBold,
            ),
            const Spacer(),
            ChangeLabeledTextButton(onTap: headerOnChange!),
          ],
        ),
        const IuppDivider(),
      ],
    );
  }
}
