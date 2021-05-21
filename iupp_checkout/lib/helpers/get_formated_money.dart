import 'package:iupp_core/core/utils/utils.dart';

String getFormatedMoney(double currencyValue) {
  try {
    return 'R\$ ${formatCurrency.format(currencyValue)}';
  } catch (e) {
    rethrow;
  }
}
