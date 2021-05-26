import 'package:iupp_core/core.dart';

class IuppPageSpacer extends StatelessWidget {
  const IuppPageSpacer({
    Key? key,
    this.top,
    this.bottom,
    this.right,
    this.left,
    this.child,
    this.preferPercentage = true,
    this.percentageValue,
    this.staticValue,
  })  : assert(preferPercentage == true && staticValue == null || preferPercentage == false && staticValue != null),
        super(key: key);

  final bool preferPercentage;
  final double? staticValue;
  final bool? top;
  final bool? bottom;
  final bool? right;
  final bool? left;
  final double? percentageValue;
  final Widget? child;

  bool get isAllSides => top == null && bottom == null && right == null && left == null;

  @override
  Widget build(BuildContext context) {
    final percentage = (percentageValue ?? 3) / 100;

    final size = MediaQuery.of(context).size;
    final defaultHeightInPercentage = preferPercentage ? size.height * percentage : staticValue!;
    final defaultWidthInPercentage = preferPercentage ? size.width * percentage : staticValue!;

    return Padding(
      padding: EdgeInsets.only(
        top: top != null || isAllSides ? defaultHeightInPercentage : 0,
        bottom: bottom != null || isAllSides ? defaultHeightInPercentage : 0,
        left: left != null || isAllSides ? defaultWidthInPercentage : 0,
        right: right != null || isAllSides ? defaultWidthInPercentage : 0,
      ),
      child: child,
    );
  }
}
