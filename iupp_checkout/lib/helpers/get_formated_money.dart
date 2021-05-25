import 'package:iupp_core/core/utils/utils.dart';

// TODO @otoniel: já temos algo parecido no core, checar se nao podemos usar de lá
String getFormatedMoney(double currencyValue) {
  try {
    return 'R\$ ${formatCurrency.format(currencyValue)}';
  } catch (e) {
    rethrow;
  }
}
