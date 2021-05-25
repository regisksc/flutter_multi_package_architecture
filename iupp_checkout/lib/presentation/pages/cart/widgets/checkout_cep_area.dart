import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core.dart';

import '../../../../helpers/get_formated_money.dart';

class CheckoutCepArea extends StatelessWidget {
  CheckoutCepArea({
    Key? key,
    this.shippingValue,
    required this.onSearch,
  }) : super(key: key);

  final double? shippingValue;
  final Function(String) onSearch;
  final TextEditingController _inputController = TextEditingController();

  bool get isShippingFree => hasShipping && shippingValue == 0;
  bool get hasShipping => shippingValue != null;

  @override
  Widget build(BuildContext context) {
    const inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: Color(0xff494C57)),
    );
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  SizedBox(
                    height: 48,
                    child: TextFormField(
                      controller: _inputController,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.go,
                      inputFormatters: [cepFormater],
                      cursorColor: const Color(0xff494C57),
                      style: const TextStyle(fontSize: 16),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: inputBorder,
                        focusedBorder: inputBorder,
                        labelText: 'Digite o CEP',
                        hintText: '00000-000',
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff494C57),
                        ),
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => onSearch(_inputController.text),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: const BoxDecoration(
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: Color(0xff494C57),
                          ),
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: const Icon(
                        IuppIcons.icone_contorno_S_seta_direita,
                        color: Color(0xff494C57),
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (_) {
                      return Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                                'Informe o CEP para calcularmos o prazo e frete. Caso não saiba seu CEP, selecione abaixo:'),
                            TextButton(
                              onPressed: () {},
                              child: const Text('não sei meu cep'),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Container(
                padding: const EdgeInsets.only(left: 30),
                child: const Icon(
                  IuppIcons.icone_contorno_I_informacao_outline,
                  color: Color(0xFFB1B5BF),
                  size: 20,
                ),
              ),
            ),
          ],
        ),
        if (hasShipping) const SizedBox(height: 29),
        if (hasShipping)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Frete'),
              Text(
                isShippingFree ? 'Grátis' : getFormatedMoney(shippingValue!),
                style: isShippingFree
                    ? const TextStyle(color: Color(0xff1E8449), fontWeight: FontWeight.w700, fontSize: 16)
                    : const TextStyle(),
              ),
            ],
          )
      ],
    );
  }
}
