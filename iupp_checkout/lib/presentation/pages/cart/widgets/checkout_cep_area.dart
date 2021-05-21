import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core/utils/formatters.dart';

class CheckoutCepArea extends StatelessWidget {
  CheckoutCepArea({
    Key? key,
    required this.defaultValue,
    required this.onSearch,
  }) : super(key: key);

  final String defaultValue;
  final Function(String) onSearch;
  final TextEditingController _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
      borderSide: BorderSide(
        color: Color(0xff494C57),
      ),
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
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
        IconButton(
          mouseCursor: MouseCursor.defer,
          icon: const Icon(
            IuppIcons.icone_contorno_I_informacao_outline,
            color: Color(0xFFB1B5BF),
            size: 20,
          ),
          onPressed: () => debugPrint('info'),
        ),
      ],
    );
  }
}
