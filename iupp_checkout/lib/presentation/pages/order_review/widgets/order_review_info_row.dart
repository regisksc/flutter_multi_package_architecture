import 'package:iupp_components/styles/styles.dart';
import 'package:iupp_core/core/dependencies/flutter_dependencies.dart';

class OrderReviewInfoRow extends StatelessWidget {
  const OrderReviewInfoRow({
    Key? key,
    required this.information,
    required this.value,
    this.highlightValue = false,
    this.bold = false,
  }) : super(key: key);
  final String information;
  final String value;
  final bool highlightValue;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final regularFont = TextStyle(
      fontFamily: 'Itau-Display',
      color: IuppColors.greyScale130,
      fontSize: 14,
      fontWeight: bold ? FontWeight.w700 : FontWeight.w400,
    );

    const highlightedFont = TextStyle(
      fontFamily: 'Itau-Display',
      color: IuppColors.green100,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    );

    return Padding(
      padding: EdgeInsets.only(bottom: size.height * 0.02),
      child: Row(
        children: [
          Text(information, style: regularFont),
          const Spacer(),
          Text(value, style: highlightValue ? highlightedFont : regularFont),
        ],
      ),
    );
  }
}
