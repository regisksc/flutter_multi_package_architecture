import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core.dart';

class CheckoutInformationCard extends StatelessWidget {
  const CheckoutInformationCard({
    Key? key,
    required this.child,
    this.height,
  }) : super(key: key);
  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
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
        child: Padding(padding: const EdgeInsets.all(SizeConstants.pageSidePadding), child: child),
      ),
    );
  }
}
